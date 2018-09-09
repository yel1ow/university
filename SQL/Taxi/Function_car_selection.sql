USE Taxi
GO

DROP FUNCTION IF EXISTS car_selection_test
GO

CREATE FUNCTION car_selection_test(@district_from NVARCHAR(20), @district_to NVARCHAR(20))
RETURNS @time_to_arrival TABLE(time INT)
BEGIN
	DECLARE get_ids CURSOR FOR
	SELECT order_id FROM list WHERE status = 'done' AND 
	--(SELECT free FROM cars WHERE id = (SELECT car_id FROM orders WHERE id = order_id)) = 0 AND
	@district_from = (SELECT district FROM address WHERE id = (SELECT address_from_id FROM orders WHERE id = order_id)) AND
	@district_to = (SELECT district FROM address WHERE id = (SELECT address_to_id FROM orders WHERE id = order_id))
	OPEN get_ids
	DECLARE @id INT
	FETCH FROM get_ids INTO @id
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		DECLARE @start_time DATETIME = (SELECT date FROM list WHERE order_id = @id AND status = 'in progress')
		DECLARE @end_time DATETIME = (SELECT date FROM list WHERE order_id = @id AND status = 'done')
		DECLARE @time INT = DATEDIFF(MINUTE, @start_time, @end_time)
		INSERT INTO @time_to_arrival(time) VALUES(@time)
		FETCH FROM get_ids INTO @id
	END
	CLOSE get_ids
	DEALLOCATE get_ids
	RETURN
END
GO

SELECT AVG(time) FROM dbo.car_selection_test('Запорожский', 'Кабельный')
GO

DROP FUNCTION IF EXISTS car_selection
GO

CREATE FUNCTION car_selection(@district_to NVARCHAR(20))
RETURNS @cars TABLE(
	type NVARCHAR(10),
	brand NVARCHAR(15),
	number NCHAR(6),
	color NVARCHAR(50),
	number_of_seats INT,
	driver NVARCHAR(100),
	time_to_arrival INT
) AS
BEGIN
	DECLARE @time_to_arrival TABLE(time INT)
	DECLARE @district_from NVARCHAR(20)

	DECLARE get_cars CURSOR FOR
	SELECT id FROM cars WHERE free = 0
	OPEN get_cars
	DECLARE @car_id INT
	FETCH FROM get_cars INTO @car_id
	WHILE (@@FETCH_STATUS = 0)
	BEGIN
		SET @district_from = (SELECT district FROM cars WHERE id = @car_id)
		DECLARE get_time CURSOR FOR
		SELECT order_id FROM list WHERE status = 'done' AND
		@district_from = (SELECT district FROM address WHERE id = (SELECT address_from_id FROM orders WHERE id = order_id)) AND
		@district_to = (SELECT district FROM address WHERE id = (SELECT address_to_id FROM orders WHERE id = order_id))
		OPEN get_time
		DECLARE @id INT
		FETCH FROM get_time INTO @id
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			DECLARE @start_time DATETIME = (SELECT date FROM list WHERE order_id = @id AND status = 'in progress')
			DECLARE @end_time DATETIME = (SELECT date FROM list WHERE order_id = @id AND status = 'done')
			DECLARE @time INT = DATEDIFF(MINUTE, @start_time, @end_time)
			INSERT INTO @time_to_arrival(time) VALUES(@time)
			FETCH FROM get_time INTO @id
		END
		CLOSE get_time
		DEALLOCATE get_time

		DECLARE @avg_time INT = (SELECT AVG(time) FROM @time_to_arrival)
		DECLARE @type NVARCHAR(10) = (SELECT type FROM cars WHERE id = @car_id)
		DECLARE @brand NVARCHAR(15) = (SELECT brand FROM cars WHERE id = @car_id)
		DECLARE @number NCHAR(6) = (SELECT number FROM cars WHERE id = @car_id)
		DECLARE @color NVARCHAR(50) = (SELECT color FROM cars WHERE id = @car_id)
		DECLARE @number_of_seats INT = (SELECT number_of_seats FROM cars WHERE id = @car_id)
		DECLARE @driver NVARCHAR(100) = (SELECT driver FROM cars WHERE id = @car_id)

		INSERT INTO @cars(type, brand, number, color, number_of_seats, driver, time_to_arrival)
		VALUES(@type, @brand, @number, @color, @number_of_seats, @driver, @avg_time)
		DELETE FROM @time_to_arrival


		FETCH FROM get_cars INTO @car_id
	END
	CLOSE get_cars
	DEALLOCATE get_cars
	RETURN
END
GO

SELECT * FROM dbo.car_selection('Рыбный')
WHERE time_to_arrival IS NOT NULL
ORDER BY time_to_arrival

EXECUTE add_order N'2018-10-10 11:11:11', N'Name', N'8-915-111-67-19', N'Центральный', 
N'Лосоносова', 12, 5, N'Центральная', N'Лосоносов', 22, 95, 12345, N'cash', 3

SELECT * FROM orders
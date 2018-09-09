USE Taxi
GO

DROP FUNCTION IF EXISTS get_address_id
GO

CREATE FUNCTION get_address_id(@district NVARCHAR(20), @street NVARCHAR(20), @house INT, @entrance INT)
RETURNS INT AS
BEGIN
	RETURN (SELECT id FROM address
			WHERE district = @district AND
			street = @street AND
			house = @house AND
			entrance = @entrance)
END
GO

SELECT dbo.get_address_id(N'Центральный', N'Лосоносова', 12, 5)
GO

DROP FUNCTION IF EXISTS get_customer_id
GO

CREATE FUNCTION get_customer_id(@customer_phone NCHAR(15))
RETURNS INT AS
BEGIN
	RETURN (SELECT id FROM customers
			WHERE phone = @customer_phone)
END
GO

DROP FUNCTION IF EXISTS get_order_id
GO

CREATE FUNCTION get_order_id(@customer_phone NCHAR(15))
RETURNS INT AS
BEGIN
	RETURN (SELECT id FROM customers
			WHERE phone = @customer_phone)
END
GO

DROP FUNCTION IF EXISTS get_car_id
GO

CREATE FUNCTION get_car_id(@car_number NCHAR(6))
RETURNS INT AS
BEGIN
	RETURN (SELECT id FROM cars
			WHERE number = @car_number)
END
GO

DROP PROCEDURE IF EXISTS add_order
GO

CREATE PROCEDURE add_order(@date DATETIME, @customer_name NVARCHAR(20), @customer_phone NCHAR(15),
						@from_district NVARCHAR(20), @from_street NVARCHAR(20), @from_house INT, @from_entrance INT,
						@to_district NVARCHAR(20), @to_street NVARCHAR(20), @to_house INT, @to_entrance INT,
						@cost INT, @payment_type NVARCHAR(10), @car_id INT = 0)
AS
BEGIN
	BEGIN TRY
	BEGIN TRANSACTION
		DECLARE @address_from_id INT = (SELECT dbo.get_address_id(@from_district, @from_street, @from_house, @from_entrance))
		IF @address_from_id IS NULL
		BEGIN
			INSERT INTO address(district, street, house, entrance) VALUES(@from_district, @from_street, @from_house, @from_entrance)
			SET @address_from_id = (SELECT dbo.get_address_id(@from_district, @from_street, @from_house, @from_entrance))
		END

		DECLARE @address_to_id INT = (SELECT dbo.get_address_id(@to_district, @to_street, @to_house, @to_entrance))
		IF @address_to_id IS NULL
		BEGIN
			INSERT INTO address(district, street, house, entrance) VALUES(@to_district, @to_street, @to_house, @to_entrance)
			SET @address_to_id = (SELECT dbo.get_address_id(@to_district, @to_street, @to_house, @to_entrance))
		END

		DECLARE @customer_id INT = (SELECT dbo.get_customer_id(@customer_phone))
		IF @customer_id IS NULL
		BEGIN
			INSERT INTO customers(name, phone) VALUES(@customer_name, @customer_phone)
			SET @customer_id = (SELECT dbo.get_customer_id(@customer_phone))
		END

		IF (SELECT free FROM cars WHERE id = @car_id) = 1
			THROW 51000, 'CAR_UNAVAILABLE', 5
		UPDATE cars
		SET free = 1
		WHERE id = @car_id

		INSERT INTO orders(date, customer_id, address_from_id, address_to_id, cost, payment_type, status, car_id)
		VALUES(@date, @customer_id, @address_from_id, @address_to_id, @cost, @payment_type, 'accepted', @car_id)

		DECLARE @id INT = IDENT_CURRENT('orders')
		INSERT INTO list(date, order_id, status) VALUES(@date, @id, 'accepted')

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
	ROLLBACK TRANSACTION
	SELECT 'CAR_UNAVAILABLE'
	END CATCH
END
GO

EXECUTE add_order N'2018-10-10 11:11:11', N'cust_name', N'8-915-111-67-19', N'Центральный', N'Лосоносова', 12, 5, N'Центральная', N'Лосоносов', 22, 95, 255, N'cash', 1

SELECT * FROM orders

SELECT * FROM cars
DELETE FROM cars
INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'P612UZ', N'red', 11, N'Коля Валуев')
UPDATE cars
SET free = 0
WHERE id = 1

DELETE FROM address

DELETE FROM customers

DELETE FROM orders

EXECUTE add_order N'2018-10-10 11:11:11', N'Name', N'8-915-111-67-19', N'Центральный', N'Лосоносова', 12, 5, N'Центральная', N'Лосоносов', 22, 95, 12345, N'cash', 2

SELECT * FROM cars
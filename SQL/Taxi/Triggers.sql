USE Taxi
GO

DROP TRIGGER IF EXISTS order_status_change
GO

CREATE TRIGGER order_status_change ON orders
AFTER UPDATE AS
BEGIN
	DECLARE @order_id INT = (SELECT id FROM deleted)
	IF (SELECT status FROM inserted) = 'in progress'
	INSERT INTO list(date, order_id, status) VALUES(GETDATE(), @order_id, 'in progress')

	IF (SELECT status FROM inserted) = 'done'
	BEGIN
		INSERT INTO list(date, order_id, status) VALUES(GETDATE(), @order_id, 'done')
		UPDATE cars
		SET district = (SELECT district FROM address WHERE id = (
						SELECT address_to_id FROM orders WHERE id = @order_id))
		WHERE id = (SELECT car_id FROM orders WHERE id = @order_id)
		UPDATE cars
		SET free = 0
		WHERE id = (SELECT car_id FROM orders WHERE id = @order_id)
	END

	IF (SELECT status FROM inserted) = 'canceled'
	BEGIN
		INSERT INTO list(date, order_id, status) VALUES(GETDATE(), @order_id, 'canceled')
		UPDATE cars
		SET district = (SELECT district FROM address WHERE id = (
						SELECT address_to_id FROM orders WHERE id = @order_id))
		WHERE id = (SELECT car_id FROM orders WHERE id = @order_id)
		UPDATE cars
		SET free = 0
		WHERE id = (SELECT car_id FROM orders WHERE id = @order_id)
	END
END
GO

INSERT INTO list(date, order_id, status) VALUES(N'2041-7-12 7:32:1', 1, N'canceled')
GO

DROP TRIGGER IF EXISTS list_status_change
GO

CREATE TRIGGER list_status_change ON list
AFTER INSERT AS
BEGIN
	DECLARE @order_id INT = (SELECT order_id FROM inserted)
	IF (SELECT status FROM inserted) = 'done'
	BEGIN
		UPDATE cars
		SET district = (SELECT district FROM address WHERE id = (
						SELECT address_to_id FROM orders WHERE id = @order_id))
		WHERE id = (SELECT car_id FROM orders WHERE id = @order_id)
		UPDATE cars
		SET free = 0
		WHERE id = (SELECT car_id FROM orders WHERE id = @order_id)
	END

	IF (SELECT status FROM inserted) = 'canceled'
	BEGIN
		UPDATE cars
		SET district = (SELECT district FROM address WHERE id = (
						SELECT address_to_id FROM orders WHERE id = @order_id))
		WHERE id = (SELECT car_id FROM orders WHERE id = @order_id)
		UPDATE cars
		SET free = 0
		WHERE id = (SELECT car_id FROM orders WHERE id = @order_id)
		--SELECT 'CAR ID'
		--SELECT car_id FROM orders WHERE id = @order_id
	END
END
GO
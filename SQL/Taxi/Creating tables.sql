USE Taxi
GO

DROP TABLE IF EXISTS address

CREATE TABLE address
(
	id INT PRIMARY KEY IDENTITY,
	district NVARCHAR(20) NOT NULL,
	street NVARCHAR(20) NOT NULL,
	house INT NOT NULL,
	entrance INT NOT NULL,
	UNIQUE(district, street, house, entrance)
)

INSERT INTO address(district, street, house, entrance) VALUES(N'Центральный', N'Лосоносова', 12, 5)

SELECT * FROM address

DELETE FROM address

GO

DROP TABLE IF EXISTS cars

CREATE TABLE cars
(
	id INT PRIMARY KEY IDENTITY,
	type NVARCHAR(10) DEFAULT 'passenger',
	CONSTRAINT car_types CHECK(type IN ('passenger', 'freight')),
	brand NVARCHAR(15) NOT NULL,
	number NCHAR(6) UNIQUE CHECK(number LIKE '[A-Z][0-9][0-9][0-9][A-Z][A-Z]') NOT NULL,
	color NVARCHAR(50),
	number_of_seats INT NOT NULL,
	driver NVARCHAR(100),
	free BIT DEFAULT 0,
	district NVARCHAR(20) DEFAULT 'Приморский'
)

INSERT INTO cars(type, brand, number, color, number_of_seats, driver) VALUES(N'passenger', N'subaru', N'P612UZ', N'red', 11, N'Коля')

SELECT * FROM cars

UPDATE cars
SET free = 0
WHERE id = 1

UPDATE cars
SET free = 1
WHERE id = (SELECT car_id FROM orders WHERE id = 1)

SELECT * FROM orders

UPDATE orders
SET status = 'done'
WHERE id = 55

DELETE FROM cars

INSERT INTO list(date, order_id, status) VALUES(N'2041-5-12 7:32:1', 5, N'canceled')

GO

DROP TABLE IF EXISTS customers

CREATE TABLE customers
(
	id INT PRIMARY KEY IDENTITY,
	name NVARCHAR(20),
	phone NCHAR(15) UNIQUE NOT NULL,
	CONSTRAINT check_phone CHECK(phone LIKE '8-[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]'),
	address_id INT,
	count INT DEFAULT 0,
	regular BIT DEFAULT 0
)

INSERT INTO customers(name, phone) VALUES(N'ALEX', N'8-923-434-19-98')

SELECT * FROM customers

DELETE FROM customers

GO

DROP TABLE IF EXISTS orders

CREATE TABLE orders
(
	id INT PRIMARY KEY IDENTITY,
	date DATETIME,
	customer_id INT,
	address_from_id INT NOT NULL,
	address_to_id INT NOT NULL,
	cost int NOT NULL,
	payment_type NVARCHAR(10) CHECK(payment_type IN ('cash', 'cashless')) NOT NULL,
	status NVARCHAR(15) CHECK(status IN ('accepted', 'in progress', 'done', 'canceled')) NOT NULL,
	car_id INT NOT NULL
)

INSERT INTO orders(date, customer_id, address_from_id, address_to_id, cost, payment_type, status) VALUES(GETDATE(), 1, 2, 3, 155, N'cash', N'accepted')

GO

SELECT * FROM orders
WHERE car_id = 1
GO

UPDATE orders


DELETE FROM orders

GO

DROP TABLE IF EXISTS list

CREATE TABLE list
(
	id INT PRIMARY KEY IDENTITY,
	date DATETIME,
	order_id INT NOT NULL,
	status NVARCHAR(15) CHECK(status IN ('accepted', 'in progress', 'done', 'canceled')) NOT NULL
)

INSERT INTO list(date, order_id, status) VALUES(N'2018-29-13 02:46:10', 1, 'in progress')

SELECT * FROM list
ORDER BY order_id

SELECT GETDATE()

DELETE FROM list

GO

UPDATE orders
SET status = 'done'
WHERE id = 1

DROP PROCEDURE IF EXISTS filling
GO

CREATE PROCEDURE filling AS
BEGIN

END

SELECT * FROM orders
WHERE car_id = 1

UPDATE orders
set status = 'in progress'
WHERE id = 1001


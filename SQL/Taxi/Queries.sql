USE Taxi
GO

--1.       Выбор а/м с числом мест >= 10
SELECT * FROM cars
WHERE number_of_seats >= 10
GO

--2.       Выбор легковых а/м
SELECT * FROM cars
WHERE type = 'passenger'
GO

--3.       Выбор отмененных заказов
SELECT * FROM orders
WHERE status = 'canceled'
GO

--4.       Выбор заказов, оплаченных кредитной картой
SELECT * FROM orders
WHERE payment_type = 'cashless'
GO

--5.       Выбор заказов, сделанных определенным клиентом
SELECT * FROM orders
WHERE customer_id = (SELECT id FROM customers WHERE phone = '8-911-125-88-12')
GO

--6.       Выбор клиентов, отменявших свои заказы
SELECT * FROM customers, orders
WHERE orders.customer_id = customers.id AND orders.status = 'canceled'
GO

--7.       Подсчет прибыли
SELECT SUM(cost)
FROM orders
GO

--8.       Подсчет общего числа выполненных заказов
SELECT COUNT(*)
FROM orders
WHERE status = 'done'
GO

--9.       Список наиболее занятых водителей


--10.    Выбор постоянных клиентов (не менее 5 выполненных заказов)
SELECT * FROM customers
WHERE count >= 5
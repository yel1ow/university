USE Taxi
GO

--1.       ����� �/� � ������ ���� >= 10
SELECT * FROM cars
WHERE number_of_seats >= 10
GO

--2.       ����� �������� �/�
SELECT * FROM cars
WHERE type = 'passenger'
GO

--3.       ����� ���������� �������
SELECT * FROM orders
WHERE status = 'canceled'
GO

--4.       ����� �������, ���������� ��������� ������
SELECT * FROM orders
WHERE payment_type = 'cashless'
GO

--5.       ����� �������, ��������� ������������ ��������
SELECT * FROM orders
WHERE customer_id = (SELECT id FROM customers WHERE phone = '8-911-125-88-12')
GO

--6.       ����� ��������, ���������� ���� ������
SELECT * FROM customers, orders
WHERE orders.customer_id = customers.id AND orders.status = 'canceled'
GO

--7.       ������� �������
SELECT SUM(cost)
FROM orders
GO

--8.       ������� ������ ����� ����������� �������
SELECT COUNT(*)
FROM orders
WHERE status = 'done'
GO

--9.       ������ �������� ������� ���������


--10.    ����� ���������� �������� (�� ����� 5 ����������� �������)
SELECT * FROM customers
WHERE count >= 5
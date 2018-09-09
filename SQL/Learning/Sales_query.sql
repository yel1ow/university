USE Sales_original
--������� ���� ���������
SELECT * FROM Employees

--������� ���� ���������, ������������ �� �� ����� � ������������������ �������
SELECT * FROM Employees
ORDER BY FirstName

--����� ��� ���������� � �������� �� ����� Ann?????
SELECT * FROM Employees
WHERE FirstName = 'Ann'

--���������� ����� ������� ����� [EmployeeID] �������� (����������� �� ���� [EmployeeID] �� �������� � ����� TOP 1)
SELECT TOP 1*
FROM Employees
ORDER BY EmployeeID DESC

--����� ��������, ������� ����� ������ 10$
SELECT *
FROM Products
WHERE Price < 10

--����� ���� ����� ������� �������
SELECT TOP 1*
FROM Products
ORDER BY Price DESC

--����� ��� ����� ������� �������� (� ����� ������� �����)
SELECT TOP 1 WITH TIES*
FROM Products
ORDER BY Price DESC

--����� ��������, �������� ������� ���������� �� Metal Plate
SELECT *
FROM Products
WHERE Name LIKE 'Metal Plate%'

--����� ��������, � �������� ������� ����������� ����� silver
SELECT *
FROM Products
WHERE Name LIKE '%silver%'

--������� �����������, ������� ����� Alicia
SELECT *
FROM Customers
WHERE FirstName = 'Alicia'

--� ���� �� ��� ���������� ����� ��������?
SELECT *
FROM Customers
WHERE (FirstName = 'Alicia') AND (MiddleInitial IS NOT NULL)

--� � ���� �� ���������� ����� ��������?
SELECT *
FROM Customers
WHERE (FirstName = 'Alicia') AND (MiddleInitial IS NULL)

--������� ��� ��������� ����� �����������
SELECT DISTINCT FirstName
FROM Customers

--����� ������������� ����� ���������
SELECT LastName
FROM Employees
GROUP BY LastName HAVING COUNT(*) > 1

--����� ������� �������� �� ����� Ann
SELECT *
FROM Employees, Sales
WHERE (FirstName = 'Ann') AND (SalesPersonID = EmployeeID)

SELECT *
FROM Employees JOIN Sales ON (FirstName = 'Ann') AND (SalesPersonID = EmployeeID)

--������� �������� �������, ������� ������� Ann
SELECT DISTINCT Name
FROM Employees, Sales, Products
WHERE (FirstName = 'Ann') AND (EmployeeID = SalesPersonID) AND (Sales.ProductID = Products.ProductID)

--������������� �������...

--������� ���������� ���������
SELECT COUNT(*)
FROM Employees

--������� ��������� ����� ������ 10$
SELECT COUNT(*)
FROM Products
WHERE Price < 10

--����� ���� ������ �������� ��������
SELECT TOP 1 Price
FROM Products
ORDER BY Price DESC

--����� ��� ����� ������� �������� (� ����� ������� �����)
SELECT TOP 1 WITH TIES Name, Price
FROM Products
ORDER BY Price DESC

--����� ���������� ���������, �������� ������� ���������� �� Metal Plate
SELECT COUNT(*)
FROM Products
WHERE Name LIKE 'Metal Plate%'

--����� ������� ���� ��������, � �������� ������� ����������� ����� silver
SELECT AVG(Price) AS Name_LIKE_silver
FROM Products
WHERE NAME LIKE '%silver%'

--������� �����������, ������� ����� Alicia?
SELECT COUNT(*) AS Count_Alicia
FROM Customers
WHERE FirstName = 'Alicia'

--������� ���� ���������� ���� �����������?
SELECT COUNT(DISTINCT FirstName)
FROM Customers

--� ������ ���������� ����������� ���������� ����� ��������?
SELECT COUNT(*)
FROM Customers
WHERE (MiddleInitial IS NOT NULL)

--����� ����� �������� ����� ����������?
SELECT TOP 2 MiddleInitial, COUNT(*)
FROM Customers
WHERE (MiddleInitial IS NOT NULL)
GROUP BY MiddleInitial
ORDER BY COUNT(*) DESC

--� ������ ���������� ����������� �� ���������� ����� ��������?
SELECT COUNT(*)
FROM Customers
WHERE (MiddleInitial IS NULL)

--� ������ ���������� ����������� ������� �����? ������� ���������� ��� ������� �����.
SELECT a.FirstName, COUNT(*) AS Count
FROM Customers a, Customers b
WHERE (a.CustomerID = b.CustomerID) --AND (a.FirstName = b.FirstName)
GROUP BY a.FirstName

--� ������ ���������� ����������� ������� ����� � ��������? ������� ���������� ��� ������� ����� � ��������.
SELECT a.FirstName, a.LastName, COUNT(*) AS Count
FROM Customers a, Customers b
WHERE (a.CustomerID = b.CustomerID)
GROUP BY a.FirstName, a.LastName

--������� ������������� ����� ���������
SELECT COUNT(*) AS Count
FROM Employees a, Employees b
WHERE (a.EmployeeID = b.EmployeeID)
GROUP BY a.LastName HAVING COUNT(*) > 1

--����� ���������� ������ �������� �� ����� Ann
SELECT COUNT(*) AS Count
FROM Employees, Sales
WHERE (EmployeeID = SalesPersonID) AND (FirstName = 'Ann')

--������� ���������� ��������� �������, ������� ������� Ann
SELECT COUNT(DISTINCT ProductID) AS Count
FROM Employees, Sales
WHERE (EmployeeID = SalesPersonID) AND (FirstName = 'Ann')

--������� ������ ���� � ������� ��������?
SELECT FirstName, LastName, COUNT(*) AS Count
FROM Employees, Sales
WHERE (EmployeeID = SalesPersonID)
GROUP BY FirstName, LastName

--������� ������� � ������� ����������?
SELECT FirstName, LastName, COUNT(*) AS Count
FROM Customers, Sales
WHERE (Customers.CustomerID = Sales.CustomerID)
GROUP BY FirstName, LastName

--�������� ����������� �������� ������ ������ ��������?
SELECT FirstName, COUNT(*) AS Count
FROM Employees, Sales
WHERE (SalesPersonID = EmployeeID)
GROUP BY FirstName

--������ ������� ���� ������ ������� �� ���� ��������?
SELECT Sales.ProductID, Name, AVG(Price) AS Avg
FROM Products, Sales
WHERE (Products.ProductID = Sales.ProductID)
GROUP BY Sales.ProductID, Name

--������ ����� ������ � ������� ��������?
SELECT FirstName, SUM(Price * Quantity) AS Sum
FROM Employees, Sales, Products
WHERE (Sales.ProductID = Products.ProductID) AND (EmployeeID = SalesPersonID)
GROUP BY FirstName

--��� ������� ������ ����� ���. �������� ���������� � ������ ������� � ������� ������������ ����������.


--������� ���������� � ��������, � ������� ����� ������� � ����� ���������, �����������,
--�������� �������, ���������� �������, ���� �� ������� � ����� ����� �������.
SELECT Employees.FirstName, Employees.LastName, Customers.FirstName, Customers.LastName, Name, Quantity, Price, (Price * Quantity) AS SUM, SalesID
FROM Employees, Customers, Products, Sales
WHERE (EmployeeID = SalesPersonID) AND (Customers.CustomerID = Sales.CustomerID) AND (Products.ProductID = Sales.ProductID)
USE Sales_original
--Вывести всех продавцов
SELECT * FROM Employees

--Вывести всех продавцов, отсортировав их по имени в лексикографическом порядке
SELECT * FROM Employees
ORDER BY FirstName

--Найти всю информацию о продавце по имени Ann?????
SELECT * FROM Employees
WHERE FirstName = 'Ann'

--Определить самый большой номер [EmployeeID] продавца (упорядочить по полю [EmployeeID] по убыванию и взять TOP 1)
SELECT TOP 1*
FROM Employees
ORDER BY EmployeeID DESC

--Найти продукты, которые стоят меньше 10$
SELECT *
FROM Products
WHERE Price < 10

--Найти один самый дорогой продукт
SELECT TOP 1*
FROM Products
ORDER BY Price DESC

--Найти все самые дорогие продукты (с самой большой ценой)
SELECT TOP 1 WITH TIES*
FROM Products
ORDER BY Price DESC

--Найти продукты, название которых начинается на Metal Plate
SELECT *
FROM Products
WHERE Name LIKE 'Metal Plate%'

--Найти продукты, в названии которых встречается слово silver
SELECT *
FROM Products
WHERE Name LIKE '%silver%'

--Найдите покупателей, которых зовут Alicia
SELECT *
FROM Customers
WHERE FirstName = 'Alicia'

--У кого их них определена буква отчества?
SELECT *
FROM Customers
WHERE (FirstName = 'Alicia') AND (MiddleInitial IS NOT NULL)

--А у кого не определена буква отчества?
SELECT *
FROM Customers
WHERE (FirstName = 'Alicia') AND (MiddleInitial IS NULL)

--Вывести все различные имена покупателей
SELECT DISTINCT FirstName
FROM Customers

--Найти однофамильцев среди продавцов
SELECT LastName
FROM Employees
GROUP BY LastName HAVING COUNT(*) > 1

--Найти продажи продавца по имени Ann
SELECT *
FROM Employees, Sales
WHERE (FirstName = 'Ann') AND (SalesPersonID = EmployeeID)

SELECT *
FROM Employees JOIN Sales ON (FirstName = 'Ann') AND (SalesPersonID = EmployeeID)

--Вывести названия товаров, которые продает Ann
SELECT DISTINCT Name
FROM Employees, Sales, Products
WHERE (FirstName = 'Ann') AND (EmployeeID = SalesPersonID) AND (Sales.ProductID = Products.ProductID)

--Аналитические запросы...

--Вывести количество продавцов
SELECT COUNT(*)
FROM Employees

--Сколько продуктов стоят меньше 10$
SELECT COUNT(*)
FROM Products
WHERE Price < 10

--Найти цену самого дорогого продукта
SELECT TOP 1 Price
FROM Products
ORDER BY Price DESC

--Найти все самые дорогие продукты (с самой большой ценой)
SELECT TOP 1 WITH TIES Name, Price
FROM Products
ORDER BY Price DESC

--Найти количество продуктов, название которых начинается на Metal Plate
SELECT COUNT(*)
FROM Products
WHERE Name LIKE 'Metal Plate%'

--Найти среднюю цену продукта, в названии которых встречается слово silver
SELECT AVG(Price) AS Name_LIKE_silver
FROM Products
WHERE NAME LIKE '%silver%'

--Сколько покупателей, которых зовут Alicia?
SELECT COUNT(*) AS Count_Alicia
FROM Customers
WHERE FirstName = 'Alicia'

--Сколько есть уникальных имен покупателей?
SELECT COUNT(DISTINCT FirstName)
FROM Customers

--У какого количества покупателей определена буква отчества?
SELECT COUNT(*)
FROM Customers
WHERE (MiddleInitial IS NOT NULL)

--Какая буква отчества самая популярная?
SELECT TOP 2 MiddleInitial, COUNT(*)
FROM Customers
WHERE (MiddleInitial IS NOT NULL)
GROUP BY MiddleInitial
ORDER BY COUNT(*) DESC

--У какого количества покупателей не определена буква отчества?
SELECT COUNT(*)
FROM Customers
WHERE (MiddleInitial IS NULL)

--У какого количества покупателей совпали имена? Вывести статистику для каждого имени.
SELECT a.FirstName, COUNT(*) AS Count
FROM Customers a, Customers b
WHERE (a.CustomerID = b.CustomerID) --AND (a.FirstName = b.FirstName)
GROUP BY a.FirstName

--У какого количества покупателей совпали имена и отчества? Вывести статистику для каждого имени и отчества.
SELECT a.FirstName, a.LastName, COUNT(*) AS Count
FROM Customers a, Customers b
WHERE (a.CustomerID = b.CustomerID)
GROUP BY a.FirstName, a.LastName

--Сколько однофамильцев среди продавцов
SELECT COUNT(*) AS Count
FROM Employees a, Employees b
WHERE (a.EmployeeID = b.EmployeeID)
GROUP BY a.LastName HAVING COUNT(*) > 1

--Найти количество продаж продавца по имени Ann
SELECT COUNT(*) AS Count
FROM Employees, Sales
WHERE (EmployeeID = SalesPersonID) AND (FirstName = 'Ann')

--Вывести количество различных товаров, которые продает Ann
SELECT COUNT(DISTINCT ProductID) AS Count
FROM Employees, Sales
WHERE (EmployeeID = SalesPersonID) AND (FirstName = 'Ann')

--Сколько продаж есть у каждого продавца?
SELECT FirstName, LastName, COUNT(*) AS Count
FROM Employees, Sales
WHERE (EmployeeID = SalesPersonID)
GROUP BY FirstName, LastName

--Сколько покупок у каждого покупателя?
SELECT FirstName, LastName, COUNT(*) AS Count
FROM Customers, Sales
WHERE (Customers.CustomerID = Sales.CustomerID)
GROUP BY FirstName, LastName

--Скольким покупателям продавал товары каждый продавец?
SELECT FirstName, COUNT(*) AS Count
FROM Employees, Sales
WHERE (SalesPersonID = EmployeeID)
GROUP BY FirstName

--Какова средняя цена каждой продажи по всем продажам?
SELECT Sales.ProductID, Name, AVG(Price) AS Avg
FROM Products, Sales
WHERE (Products.ProductID = Sales.ProductID)
GROUP BY Sales.ProductID, Name

--Какова сумма продаж у каждого продавца?
SELECT FirstName, SUM(Price * Quantity) AS Sum
FROM Employees, Sales, Products
WHERE (Sales.ProductID = Products.ProductID) AND (EmployeeID = SalesPersonID)
GROUP BY FirstName

--Для каждого товара найти мат. ожидание количества в каждой продаже и среднее квадратичное отклонение.


--Вывести информацию о продажах, в которой будут фамилии и имена продавцов, покупателей,
--название товаров, количество товаров, цена за единицу и общая сумма продажи.
SELECT Employees.FirstName, Employees.LastName, Customers.FirstName, Customers.LastName, Name, Quantity, Price, (Price * Quantity) AS SUM, SalesID
FROM Employees, Customers, Products, Sales
WHERE (EmployeeID = SalesPersonID) AND (Customers.CustomerID = Sales.CustomerID) AND (Products.ProductID = Sales.ProductID)
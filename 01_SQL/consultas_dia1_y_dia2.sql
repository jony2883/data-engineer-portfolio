-- ========================================
-- CONSULTAS SQL - JONY2883
-- Data Engineer Journey - Diciembre 2025
-- ========================================

-- DÍA 1 - Básicas (con TOP porque usamos w3schools)
SELECT TOP 5 * FROM Customers;
SELECT CustomerName FROM Customers WHERE Country='Mexico';
SELECT CustomerName, City FROM Customers WHERE City='London';
SELECT * FROM Products WHERE Price>50;
SELECT TOP 3 ProductName, Price FROM Products ORDER BY Price DESC;
SELECT COUNT(*) FROM Orders;
SELECT TOP 5 Country, COUNT(*) AS Total FROM Customers GROUP BY Country ORDER BY Total DESC;
SELECT * FROM Orders WHERE OrderDate LIKE '1996-07%';
SELECT CustomerName FROM Customers WHERE CustomerName LIKE '%ez';
SELECT ProductName FROM Products WHERE CategoryID=1;

-- DÍA 2 - JOINs
SELECT TOP 10 Orders.OrderID, Customers.CustomerName FROM Orders JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT Orders.OrderID, Customers.CustomerName FROM Orders JOIN Customers ON Orders.CustomerID = Customers.CustomerID WHERE Customers.Country = 'Mexico';
SELECT TOP 10 Products.ProductName, Categories.CategoryName FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;
SELECT TOP 10 Orders.OrderID, Employees.FirstName, Employees.LastName FROM Orders JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID;
SELECT Customers.CustomerName FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID WHERE Orders.CustomerID IS NULL;
SELECT TOP 10 Orders.OrderID, Customers.CustomerName, Employees.FirstName FROM Orders JOIN Customers ON Orders.CustomerID = Customers.CustomerID JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID;
SELECT TOP 5 Customers.CustomerName, COUNT(Orders.OrderID) AS TotalPedidos FROM Customers JOIN Orders ON Customers.CustomerID = Orders.CustomerID GROUP BY Customers.CustomerName ORDER BY TotalPedidos DESC;
SELECT TOP 5 Products.ProductName, SUM(OrderDetails.Quantity) AS TotalVendido FROM Products JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID GROUP BY Products.ProductName ORDER BY TotalVendido DESC;
Add mis primeras 25 consultas SQL - Dia 1 y 2 completados

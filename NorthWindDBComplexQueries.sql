USE northwind;
SELECT Suppliers.CompanyName, Suppliers.Country, Products.CategoryID, Products.ProductName from Suppliers JOIN Products on Suppliers.SupplierID = Products.SupplierID;

SELECT 
    Products.ProductName,
    Products.CategoryID,
    Suppliers.CompanyName,
    Suppliers.Country,
    SUM(orderdetails.Quantity) AS 'Quantity',
    SUM(orderdetails.quantity * orderdetails.UnitPrice) AS 'Total Sales'
FROM
    Products
        JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
        JOIN
    orderdetails ON Products.ProductID = orderdetails.ProductID
WHERE
    Suppliers.Country in ('France' , 'Italy','Spain','UK','Germany','Norway','Sweden')
GROUP BY Products.ProductName , Products.CategoryID , Suppliers.CompanyName , Suppliers.Country;
SELECT 
    Customers.Country,
    Customers.CompanyName,
    COUNT(Orders.OrderID) AS 'Number of Orders',
    SUM(orderdetails.UnitPrice) as 'Total Price'
FROM
    Customers
        JOIN
    Orders ON Customers.CustomerID = Orders.CustomerID
        JOIN
    orderdetails ON Orders.OrderID = orderdetails.OrderID
GROUP BY Customers.Country , Customers.CompanyName;

SELECT 
    Products.ProductName,
    Suppliers.CompanyName,
    Products.UnitsInStock
FROM
    Products
        JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
    Products.UnitsInStock < 100;

SELECT 
    CONCAT(Employees.LastName,
            ',',
            Employees.FirstName) AS 'Employee Name',
    Employees.Title,
    Employees.Region,
    Employees.Country,
    COUNT(Orders.OrderID) AS 'Total Orders',
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'Total Sales Amount'
FROM
    Employees
        JOIN
    Orders ON Employees.EmployeeID = Orders.EmployeeID
        JOIN
    orderdetails ON Orders.OrderID = orderdetails.OrderID
GROUP BY Employees.LastName , Employees.FirstName , Employees.Title , Employees.Region , Employees.Country
ORDER BY Employees.LastName ASC;

SELECT 
    Orders.OrderID,
    Customers.CompanyName,
    Orders.OrderDate,
    Orders.ShipName,
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'Total Amount'
FROM
    Orders
        JOIN
    Customers ON Orders.CustomerID = Customers.CustomerID
        JOIN
   orderdetails on Orders.OrderID = orderdetails.OrderID group by Orders.OrderID, Customers.CompanyName ;

   SELECT 
    Orders.OrderID,
    Customers.ContactName,
    Orders.OrderDate,
    Orders.ShipName,
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'Total Amount'
FROM
    Orders
        JOIN
    Customers ON Orders.CustomerID = Customers.CustomerID
        JOIN
    orderdetails ON Orders.OrderID = orderdetails.OrderID
WHERE
    orderdetails.Quantity * orderdetails.UnitPrice > 1000 group by Orders.OrderId, Customers.ContactName;
   
   SELECT 
    Orders.ShipName,
    SUM(Orders.ShippedDate) AS 'Total Orders Shipped'
FROM
    Orders
GROUP BY Orders.ShipName, Orders.ShippedDate;

  SELECT 
    Orders.ShipName,
    SUM(orderdetails.Quantity) AS 'Total Orders Shipped'
FROM
    Orders join orderdetails on Orders.OrderID = orderdetails.OrderID where Orders.ShipCountry = 'USA' group by Orders.ShipName;
    
    SELECT 
    Orders.ShipCountry,
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'Total Dollar Amount'
FROM
    Orders
        JOIN
    orderdetails ON Orders.OrderID = orderdetails.OrderID
GROUP BY Orders.ShipCountry;
    
    SELECT 
    Categories.CategoryName,
    SUM(Products.QuantityPerUnit * Products.UnitPrice) AS 'Total Sales'
FROM
    Categories
        JOIN
    Products ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName order by SUM(Products.QuantityPerUnit * Products.UnitPrice) DESC;


SELECT 
    Products.ProductName,
    COUNT(Products.UnitPrice) AS 'Total Orders',
    SUM(Products.UnitPrice) AS 'Total Sales'
FROM
    Products
WHERE
    Products.CategoryID = 8
GROUP BY Products.ProductName;

SELECT 
    Products.ProductName,
    Orders.ShipCountry,
    COUNT(Orders.OrderID) AS 'Number of Orders',
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'Total Cost'
FROM
    Products
        JOIN
    orderdetails ON Products.ProductID = orderdetails.ProductID
        JOIN
    Orders ON orderdetails.OrderID = Orders.OrderID
WHERE
    Products.CategoryID = 8
        AND Orders.ShipCountry IN ('Spain' , 'France', 'Italy')
GROUP BY Products.ProductName , Orders.ShipCountry;

SELECT 
    Products.ProductName,
    Orders.ShipCountry,
    COUNT(Orders.OrderID) AS 'Number of Orders',
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'Total Cost'
FROM
    Products
        JOIN
    orderdetails ON Products.ProductID = orderdetails.ProductID
        JOIN
    Orders ON orderdetails.OrderID = Orders.OrderID
WHERE
    Products.CategoryID IN (4 , 6)
        AND Orders.ShipCountry = 'USA'
GROUP BY Products.ProductName , Orders.ShipCountry;

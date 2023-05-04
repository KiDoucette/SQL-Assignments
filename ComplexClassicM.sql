use classicmodels;
SELECT 
    customers.customerName,
    orders.orderNumber,
    orders.orderDate,
    orders.status
FROM
    customers
        INNER JOIN
    orders ON customers.customerNumber = orders.customerNumber
GROUP BY customers.customerName , orders.orderNumber , orders.orderDate , orders.status;

SELECT 
    customers.customerName,
    orders.orderNumber,
    orders.shippedDate
FROM
    customers
        LEFT OUTER JOIN
    orders ON customers.customerNumber = orders.customerNumber
GROUP BY customers.customerName , orders.orderNumber , orders.shippedDate;

SELECT 
    customers.customerName,
    orders.orderNumber,
    orderdetails.productCode,
    orderdetails.quantityOrdered,
    orderdetails.priceEach,
    SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS 'Total Price'
FROM
    customers
        JOIN
    orders ON customers.customerNumber = orders.customerNumber
        INNER JOIN
    orderdetails ON orders.orderNumber = orderdetails.orderNumber
GROUP BY customers.customerName , orders.orderNumber , orderdetails.productCode , orderdetails.quantityOrdered , orderdetails.priceEach;

SELECT 
    customers.customerName,
    customers.contactLastName,
    customers.contactFirstName,
    payments.amount AS 'Total Payments'
FROM
    customers
        INNER JOIN
    payments ON payments.customerNumber = customers.customerNumber
GROUP BY customers.customerName , customers.contactLastName , customers.contactFirstName , payments.amount;

SELECT 
    orderdetails.productCode,
    orderdetails.quantityOrdered,
    products.productName,
    products.productLine,
    products.MSRP,
    productlines.textDescription
FROM
    orderdetails
        INNER JOIN
    products ON orderdetails.productCode = products.productCode
        INNER JOIN
    productlines ON products.productLine = productlines.productLine
GROUP BY orderdetails.productCode , orderdetails.quantityOrdered , products.productName , products.productLine , products.MSRP , productlines.textDescription;
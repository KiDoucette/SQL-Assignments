use classicmodels;
select * from customers;
select customerName, phone, city from customers where country = "USA";
select lastName, firstName, extension from employees where officeCode = "1";
select * from orders where customerNumber = 363;
select orderNumber, shippedDate, orders.status from orders where orderDate like "%2004%";
select productName, productVendor, productDescription, quantityInStock, MSRP from products order by MSRP desc;
select productCode, productName, quantityInStock from products where quantityInStock < 1000 order by quantityInStock asc;
select paymentDate, customerNumber, amount from payments where paymentDate like "%2003%";
select customerNumber, paymentDate, sum(amount) over (partition by customerNumber) as "totalAmount" from payments order by totalAmount desc;
select productName, quantityInStock, MSRP from products where productLine = "Classic Cars" order by quantityInStock desc ;




SELECT 
    product.sku_number AS 'SKU Number',
    product.description AS 'Description',
    product.price AS 'Price Each',
    COUNT(order_product.product_id) AS 'Total Sold'
FROM
    product
        JOIN
    order_product ON order_product.product_id = product.product_id
GROUP BY product.sku_number , product.description , product.price;
select customer.last_name, customer.first_name, customer.email, count(customer_order.customer_id)
from customer join customer_order on customer.customer_id = customer_order.customer_id 
group by customer.last_name, customer.first_name, customer.email;
-- INNER JOIN 

-- it is used to combine rows from two or more tables only when there is a matching value in both tables.
 -- ON clause specifies the common col used for matching
 -- INNER JOIN returns only those values where those col match
 -- while specifying  the col in select we need to mention from which table we need to take that col if it is common in both tables
-- 'INNER' word is optional

-- SELECT order_id , orders.customer_id , first_name , last_name 
-- FROM orders
-- INNER JOIN customers ON orders.customer_id = customers.customer_id

-- the order of tables doesnt matter 
-- SELECT order_id , orders.customer_id , first_name , last_name 
-- FROM customers
-- INNER JOIN orders ON orders.customer_id = customers.customer_id

-- we can even abbreviate(create ALIASES) the table names for convention
-- SELECT order_id , o.customer_id , first_name , last_name 
-- FROM customers c 
-- INNER JOIN orders o 
--               ON o.customer_id = c.customer_id
               

-- PRACTICE QUES
-- SELECT quantity , o.unit_price , o.product_id , name
-- FROM order_items o
-- JOIN products p
--               ON p.product_id = o.product_id
               



-- JOINING ACROSS DATABASES
-- works similarly
-- we can specify the columns we need in SELECT using aliases
-- we did not mention database of order_items as it is already open
-- we only have to mention the database of that table which are not in the current database

-- SELECT *
-- FROM order_items o
-- JOIN sql_inventory.products p
--     ON o.product_id = p.product_id
     
 




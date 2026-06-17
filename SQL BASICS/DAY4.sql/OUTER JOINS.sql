-- OUTER JOINS

-- they are used when we want to include unmatched rows along with the matched ones
-- with an inner join , only matching records are returned
-- with an outer join we can also see the unmatched records
-- OUTER keyword is optional
-- but left or right MUST be mentioned otherwise it will be taken as an inner join

USE sql_store;
-- SELECT 
--      c.customer_id,
--	    c.first_name,
--      o.order_id
-- FROM customers c
-- JOIN orders o
--	ON c.customer_id = o.customer_id
-- ORDER BY customer_id

-- this is an inner join which only shows those customers which have an order in our system
-- but if we want to see all customers we will use an outer join
 
-- There are two types of outer joins;
-- LEFT JOIN ( returns all the contents of first written table)
-- RIGHT JOIN ( returns all the contents of second written table)
-- SELECT 
--     c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM customers c
-- LEFT JOIN orders o
--	ON c.customer_id = o.customer_id
-- ORDER BY customer_id

-- returns all customers as we used left join

 
-- SELECT 
--     c.customer_id,
--     c.first_name,
--     o.order_id
-- FROM customers c
-- RIGHT JOIN orders o
--	ON c.customer_id = o.customer_id
-- ORDER BY customer_id

 -- returns same result as inner join one as we do not have anything extra
 
 
 
 
 
 -- OUTER JOIN BETWEEN MULTIPLE TABLES
-- used when we want all records from one main table, even if matching data is missing in some of the other tables
-- SELECT 
--      c.customer_id,
--      c.first_name,
--      o.order_id,
--      sh.name AS shipper
-- FROM customers c
-- LEFT JOIN orders o
--         ON c.customer_id = o.customer_id
-- LEFT JOIN shippers sh
--          ON o.shipper_id = sh.shipper_id
-- ORDER BY c.customer_id


 
 -- PRACTICE QUES
 -- SELECT 
--      o.order_date,
--      o.order_id,
--      c.first_name,
--      sh.name as shipper,
--      os.name as status
-- FROM orders o
-- JOIN customers c
--    ON o.customer_id = c.customer_id
-- LEFT JOIN shippers sh
--    ON o.shipper_id = sh.shipper_id
-- JOIN order_statuses os
--    ON o.status = os.order_status_id    
-- ORDER BY order_id
 
 
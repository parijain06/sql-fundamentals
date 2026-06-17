-- NATURAL JOINS

-- used when two tables have one or more columns with same name and meaning
-- and we want these col to be automatically joined by sql
-- not professionally used as it may create unexpected results

USE sql_store;
SELECT 
      o.order_id,
      c.first_name
FROM orders o
NATURAL JOIN customers c
      
 

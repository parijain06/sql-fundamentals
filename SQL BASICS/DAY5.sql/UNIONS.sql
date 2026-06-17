-- UNIONS

-- we can combine rows from either same or different tables

-- SAME TABLE
SELECT 
      order_id,
      order_date,
      'ACTIVE' as status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
      order_id,
      order_date,
      'ARCHIEVED' as status
FROM orders
WHERE order_date < '2019-01-01';

-- DIFF TABLES
SELECT first_name
FROM customers
UNION 
SELECT name 
FROM shippers;

-- no of columns returned by each table MUST be same:
-- the following query will give an error as sql does not know how to combine these

SELECT first_name , last_name
FROM customers
UNION 
SELECT name 
FROM shippers;

-- also the name of column returned will be the same as the name of the column of first entered table




-- PRACTICE QUES
SELECT  
       customer_id,
       first_name,
       points,
       'Bronze' as type
FROM customers
WHERE points < 2000
UNION
SELECT  
       customer_id,
       first_name,
       points,
       'Silver' as type
FROM customers
WHERE points BETWEEN 2000 and 3000 
UNION
SELECT  
       customer_id,
       first_name,
       points,
       'Gold' as type
FROM customers
WHERE points >3000
ORDER BY first_name

-- SELECT CLAUSE

USE sql_store;
-- * is used to select the whole table
-- we can write everything we wanna select in either one line or in diff lines
-- SELECT first_name, last_name, points,points+10
-- as used to change the name 
-- '' this to create space between words in headingscustomers
-- SELECT
    --   first_name,
	--   last_name,
    --   points,
      -- points+10 AS 'discount factor'
-- distinct is used to remove duplicates(if any)      
SELECT DISTINCT state      
FROM customers
-- where is used to return only that specific values
-- WHERE customer_id = 3
-- order by is used to sort
-- ORDER BY first_name


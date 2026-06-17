-- AGGREGATE FUNCTIONS

-- used to perform calculation on multiple values and return a single value
-- often used with SELECT and GROUP BY

-- COUNT() : returns number of values
-- SUM() : returns sum of values
-- AVG() : returns average value
-- MAX() : returns maximum value
-- MIN() : returns minimum value
-- ROUND() : rounds off a number to a specifies no. of decimals

USE sql_invoicing;
SELECT COUNT(amount)
FROM payments;

USE sql_invoicing;
SELECT COUNT(*)
FROM payments;

USE sql_invoicing;
SELECT SUM(maount)
FROM payments;

USE sql_invoicing;
SELECT MAX(amount)
FROM payments;

USE sql_invoicing;
SELECT MIN(amount)
FROM payments

USE sql_invoicing;
SELECT ROUND(AVG(amount),2)
FROM payments




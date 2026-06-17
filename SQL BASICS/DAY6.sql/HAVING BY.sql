-- HAVING BY

-- HAVING is used to filter groups after GROUP BY has created them.
-- WHERE → filters individual rows
-- HAVING → filters groups

-- SYNTAX
SELECT column_name
FROM table_name
WHERE condition
GROUP BY column_name
HAVING condition;

-- Example
-- Suppose you want:
-- Only payments greater than 10.
-- Then group them by payment method.
-- Then show only methods having more than 2 payments.

SELECT payment_method 
FROM payments
where amount > 32
GROUP BY payment_method
HAVING date > '2019-01-10' ;
-- this wont work as HAVING → filters groups (COUNT(), SUM(), AVG(), MIN(), MAX()) not rows
SELECT payment_method, COUNT(*) AS total
FROM payments
GROUP BY payment_method
HAVING COUNT(*) > 2;
-- GROUP BY

-- used to group rows that have the same value in one or more columns.
-- It combines similar rows into groups.

-- We use GROUP BY when we want to:

-- Count records in each group
-- Find sum of values in each group
-- Find average of values in each group
-- Find minimum value in each group
-- Find maximum value in each group

-- Syntax
SELECT column_name, aggregate_function(column_name)
FROM table_name
GROUP BY column_name;


USE sql_invoicing;
SELECT payment_method , SUM(amount) as total
FROM payments
GROUP BY payment_method


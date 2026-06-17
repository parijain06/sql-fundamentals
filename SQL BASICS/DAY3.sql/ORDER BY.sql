USE sql_store;
  SELECT *
  FROM customers


-- ORDER BY CLAUSE
-- used for sorting the data
-- can be sorted in any order
-- ORDER BY first_name

-- can be sorted by multiple parameters(if states same, then sorted by firstname)
-- ORDER BY state , first_name

-- can be sorted in descending(/ascending by default) using:
-- ORDER BY state DESC , first_name DESC

-- even if we select particular column in SELECT, then also we can sort by some diff col
-- SELECT first_name, last_name
-- FROM customers
-- ORDER by birth_date

-- we can aslo decide the order of columns i.e sorting order
-- SELECT first_name, last_name
 -- FROM customers
-- ORDER BY 2,1


-- example ques

-- FROM order_items
-- WHERE order_id = 2
-- ORDER BY unit_price*quantity DESC

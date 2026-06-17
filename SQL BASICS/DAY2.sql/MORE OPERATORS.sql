-- MORE OPERATORS

USE sql_store;
SELECT *
FROM customers

-- LIKE operator
-- last name starts with b and can be any long
-- WHERE last_name LIKE 'b%'
-- last name ends with y irrespective of length
-- WHERE last_name LIKE '%y'
-- last name ends with y and starting 5 characters can be anything
-- WHERE last_name LIKE '_____y'
 --  WHERE last_name LIKE 'b____y'
 -- WHERE last_name LIKE '%field%'
  
  -- REGEXP operator
  -- no need to put %
-- WHERE last_name REGEXP 'field'
-- to denote thet the must start from that specific word, we use:
-- WHERE last_name REGEXP '^field'
-- to denote that the word must end with that specific word, we must use:
-- WHERE last_name REGEXP 'field$'
-- to put multiple words,
-- WHERE last_name REGEXP 'field|mac|rose'
-- if we want to give some specific word before a word we use,so this would return any word conatining eitherg,i,m before 'e'
-- WHERE last_name REGEXP '[gim]e'
-- we can even add square brackets after a specific word
-- also if we want the letter before a word in any specific range, we use:
-- WHERE last_name REGEXP '[a-h]e'

-- IS NULL and IS NOT NULL
-- is null is used to return empty spaces
-- WHERE phone is null
WHERE phone is not null
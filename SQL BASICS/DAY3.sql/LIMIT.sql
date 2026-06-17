SELECT *
FROM customers

-- LIMIT CLAUSE
-- limits the number of entries returned
-- it always comes in the end 

-- LIMIT 4

-- if i want to get last three customers, i will provide an offset and then no of entries to be returned
-- limit 6,3
-- limit 4,3
 
-- exercise question
-- get the top three loyal customers( customer with top three points)
ORDER BY points DESC
limit 3

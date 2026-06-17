-- IMPLICIT JOIN SYNTAX
-- SELECT *
-- FROM orders o
-- JOIN customers c 
--    ON  o.customer_id = c.customer_id
-- can be written as using implicit join syntax:    
SELECT *
FROM customer c , orders o
WHERE  o.customer_id = c.customer_id     
 
 -- not preferable to use as if we forget WHERE , we gonna get a cross join
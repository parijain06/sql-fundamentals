-- CROSS JOINS

-- Combines every row of one table with every row of another table, creating all possible combinations, regardless of whether the rows are related.

-- name	marks
-- Pari	90
-- Pari	85
-- Pari	75
-- Ishan 90
-- Ishan 85
-- Ishan 75
-- Every student is paired with every marks row.

-- Inner Join: Returns only the rows that have matching values in both tables.
-- Outer Join: Returns matching rows plus the non-matching rows from one or both tables.
-- Cross Join: Returns all possible row combinations, without looking for matches.

-- SELECT 
--      c.first_name,
--      p.name as product
-- FROM customers c
-- CROSS JOIN products p
-- ORDER BY c.first_name



-- EXPLICIT JOIN SYNATX

 SELECT 
      c.first_name,
      p.name as product
 FROM customers c , products p
-- CROSS JOIN products p
 ORDER BY c.first_name



-- PRACTICE QUES
-- do a cross join between products and shippers using
-- implicit and explicit syntax

-- IMPLICIT
SELECT sh.name as shipper,
        p.name as products
FROM shippers sh , products p
ORDER BY sh.name

-- EXPLICIT
SELECT sh.name as shipper,
        p.name as products
FROM shippers sh 
CROSS JOIN products p
ORDER BY sh.name

        

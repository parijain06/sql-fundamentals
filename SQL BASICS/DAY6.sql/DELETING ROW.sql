-- DELETING A ROW

DELETE FROM invoices;
-- this statement will delete the whole table

DELETE FROM invoices
WHERE client_id = 2;

-- using a subquery
DELETE FROM invoices
WHERE client_id = (
	 SELECT *
     FROM clients
     WHERE name = 'Myworks'
     )

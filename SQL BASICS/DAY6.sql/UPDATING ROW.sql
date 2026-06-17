-- UPDATING A SINGLE ROW

USE sql_invoicing;
UPDATE invoices
SET payment_total = 10,
    payment_date = due_date
WHERE invoice_id = 1;


-- UPDATING MULTIPLE ROWS
-- to update multiple rows we need to select a column more general
-- in this we used client id instead if invoice id as it was unique for all

USE sql_invoicing;
UPDATE invoices
SET payment_total = 10,
    payment_date = due_date
WHERE client_id = 1;

USE sql_invoicing;
UPDATE invoices
SET payment_total = 10,
    payment_date = due_date
WHERE client_id in (1,3);



-- PRACTICE QUES
USE sql_store;
UPDATE customers
SET points = points +50
WHERE birth_date < '1990-01-01';





-- USING SUBQUERIES IN UPDATE 
-- subquery is a select statement wich we write after a sequel
-- use when updating data in a diff table using another table
UPDATE invoices
SET
   payment_total = 10,
   payment_date = due_date
WHERE cient_id =
               (SELECT client_id
               FROM clients
               WHERE name = 'Myworks')
               
   
   
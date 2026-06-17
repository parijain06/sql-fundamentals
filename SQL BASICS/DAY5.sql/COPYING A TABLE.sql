-- CREATING A COPY OF A TABLE

-- here selct is called as  a subquery
-- CREATE TABLE orders_archieved AS
-- SELECT * 
-- FROM orders;


INSERT INTO orders_archieved
SELECT *
FROM orders
WHERE order_date <'2019-01-01';



-- PRACTICE QUES
USE sql_invoicing;
CREATE TABLE invoices_archive as
SELECT 
      i.invoice_id,
      i.number,
      c.name,
      i.invoice_total,
      i.payment_total,
      i.invoice_date,
      i.due_date,
      i.payment_date
FROM invoices i 
JOIN  clients c
USING (client_id)
WHERE i.payment_date is not null
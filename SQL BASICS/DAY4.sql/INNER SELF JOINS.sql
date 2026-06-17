-- SELF JOINS
-- Used when we want to join the table with itself
-- for eg; we are joining the empoyee and thier manager name
-- every column must be prefixed with an aliase
-- USE sql_hr;
-- SELECT e.first_name,
--       m.first_name as manager,
--       e.employee_id
-- FROM employees e
-- JOIN employees m
--    ON e.reports_to = m.employee_id




-- JOINING MULTIPLE TABLES
-- we join data from multiple tables using one table as a bridge(table having something in common)

-- Notice that:
-- Customers is connected to Orders through customer_id.
-- Orders is connected to Order_Statuses through status.
-- But:
-- Customers has no order_status_id.
-- Order_Statuses has no customer_id.
-- So Customers and Order_Statuses cannot be joined directly.
-- However, Orders contains both

USE sql_store;
SELECT 
      o.order_id,
      o.order_date,
      c.first_name,
      c.last_name,
      os.name AS status
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
JOIN order_statuses os
    ON o.status = os.order_status_id    
    
-- Although ,the order status ID and status two different things ; but they represent the same concept.

-- When joining many tables, you usually move from one table to another through matching columns (often primary key ↔ foreign key relationships).
-- For example:
-- Customers
-- (customer_id)
--      |
-- Orders
-- (customer_id, order_id)
--      |
-- Order_Items
-- (order_id, product_id)
--      |
-- Products
-- (product_id, category_id)
--      |
-- Categories
-- (category_id)

-- EXAMPLE QUES
-- SELECT
--     p.date,
--	    p.amount,
--      c.client_id,
--      i.invoice_id,
--      c.name,
--      pm.name as method
-- FROM payments p
-- JOIN clients c
--     ON c.client_id = p.client_id
-- JOIN invoices i
--	 ON p.invoice_id = i.invoice_id
-- JOIN payment_methods pm
--     ON p.payment_method = pm.payment_method_id
     
-- i need not join invoices table as i only needed invoices id from it which i already had in payments table     
SELECT 
       p.date,
	   c.client_id,
       p.invoice_id,
       p.amount,
       c.name,
       pm.name as method
FROM payments p
JOIN clients c
     ON c.client_id = p.client_id    
JOIN payment_methods pm
     ON p.payment_method = pm.payment_method_id     
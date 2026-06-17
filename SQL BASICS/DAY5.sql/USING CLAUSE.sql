-- USING CLAUSE

-- used in SQL joins as a shorter and cleaner alternative to ON.
-- only when the join column exists in both tables with the same name, otherwise use ON.

USE sql_store;
-- SELECT
--      o.order_id,
--      c.first_name,
--      sh.name as shipper
-- FROM orders o
-- JOIN customers c
--    ON o.customer_id = c.customer_id      
--      USING (customer_id)
-- LEFT JOIN shippers sh
--     USING (shipper_id)      
     
SELECT *
FROM order_items oi
JOIN  order_item_notes oin
--    ON oi.order_id = oin.order_id
--    AND oi.product_id = oin.product_id
    USING (order_id , product_id)

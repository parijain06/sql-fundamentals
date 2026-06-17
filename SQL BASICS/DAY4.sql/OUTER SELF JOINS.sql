-- OUTER JOIN
-- uses when a table refrences itself and you want to keep rows that don't have  amtching related row

USE sql_hr;
SELECT 
      e.first_name,
      e.employee_id,
      m.first_name as manager
FROM employees e
LEFT JOIN employees m
    ON e.reports_to = m.employee_id

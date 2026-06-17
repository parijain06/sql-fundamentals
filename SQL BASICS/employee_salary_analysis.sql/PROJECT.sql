-- EMPLOYEE SALARY ANALYSIS


USE employee_salary_analysis;

-- number of employees in company
SELECT  COUNT(employeeID) as total_employees
FROM employee_salary_dataset;

-- avergade salary of the employees
SELECT  ROUND(AVG(monthly_salary),2) 
FROM employee_salary_dataset;

-- highest salary
SELECT  MAX(monthly_salary) as highest_salary
FROM employee_salary_dataset;

-- lowest salary
SELECT  MIN(monthly_salary) as lowest_salary
FROM employee_salary_dataset;

-- total monthly salary expense
SELECT  SUM(monthly_salary) as total
FROM employee_salary_dataset;

-- employees in each department
SELECT department , COUNT(*) as total
FROM employee_salary_dataset
GROUP BY department;

-- avg salary in each department
SELECT department ,  ROUND(AVG(monthly_salary),2)as average
FROM employee_salary_dataset
GROUP BY department
ORDER BY average  DESC;

-- highest salary in each department
SELECT department ,  MAX(monthly_salary) as highest_salary
FROM employee_salary_dataset
GROUP BY department
ORDER BY highest_salary DESC;

-- total salary paid by each department
SELECT department , SUM(monthly_salary) as total
FROM employee_salary_dataset
GROUP BY department
ORDER BY total DESC;

-- department having more than 8 employees
SELECT department , COUNT(*) as total_employees
FROM employee_salary_dataset
GROUP BY department
HAVING total_employees > 8
ORDER BY total_employees DESC;

-- department having avg salary > 80,000
SELECT department ,  ROUND(AVG(monthly_salary),2)as average
FROM employee_salary_dataset
GROUP BY department
HAVING average > 80000
ORDER BY average  DESC;

-- top 5 highest paid employees
SELECT 
      name,
      department,
      monthly_salary
FROM employee_salary_dataset
ORDER BY Monthly_Salary DESC
LIMIT 5;

-- top 5 employees earning above avg salary
SELECT 
      name,
      department,
      monthly_salary
FROM employee_salary_dataset
WHERE Monthly_Salary >
             (
			SELECT AVG(monthly_salary)
            FROM employee_salary_dataset
            )
LIMIT 5;

-- employees above 40 yrs, sorted by salary
SELECT name,
       department,
       age,
       monthly_salary
FROM employee_salary_dataset
WHERE age > 40
ORDER BY monthly_salary DESC;

-- average salary by gender
SELECT gender , ROUND(AVG(monthly_salary),2) as average_salary
FROM employee_salary_dataset
GROUP BY gender;

-- average salary by education level
SELECT education_level , ROUND(AVG(monthly_salary),2) as average_salary
FROM employee_salary_dataset
GROUP BY education_level
ORDER BY average_salary desc;

-- employees in each city
SELECT city , COUNT(employeeID) as total
FROM employee_salary_dataset
GROUP BY city
ORDER BY total desc;

-- highest and lowest paid employee
(SELECT 
      name,
      department,
      gender,
      monthly_salary,
      'highest' as status
FROM employee_salary_dataset
ORDER BY Monthly_Salary desc
LIMIT 1)
UNION
(SELECT 
      name,
      department,
      gender,
      monthly_salary,
      'lowest' as status
FROM employee_salary_dataset
ORDER BY Monthly_Salary 
LIMIT 1)






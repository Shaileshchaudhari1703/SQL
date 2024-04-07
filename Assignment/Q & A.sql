Use HR;

-- 1 Display all information in the tables EMP and DEPT.
Select * from employees;
select * from departments;

-- 2 Display only the hire date and employee name for each employee
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_name, e.hire_date
FROM employees e;

 -- 3 Display the ename concatenated with the job ID, separated by a comma and space

SELECT CONCAT(e.first_name, e.last_name) AS Employee,
       CONCAT(e.job_id, j.job_title) AS Title
FROM employees e
JOIN jobs j ON e.job_id = j.job_id;

-- 4. Display the hire date, name and department number for all clerks.

-- 5. Create a query to display all the data from the EMP table. Separate each column by a comm. Name the column THE OUTPUT



-- 6. Display the names and salaries of all employees with a salary greater than 2000.
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 2000;

-- 7. Display the names and dates of employees with the column headers "Name" and "Start Date"

-- 8. Display the names and hire dates of all employees in the order they were hired.
SELECT first_name, last_name, hire_date
FROM employees
ORDER BY hire_date;

-- 9. Display the names and salaries of all employees in reverse salary order.
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC;

-- 10. Display 'ename" and "deptno" who are all earned commission and display salary in reverse order.
SELECT first_name AS ename, department_id AS deptno
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC;

-- 11. Display the last name and job title of all employees who do not have a manager

-- 12. Display the last name, job, and salary for all employees whose job is sales representative or stock clerk and whose salary is not equal to $2,500, $3,500, or $5,000

-- 13 Display the maximum, minimum and average salary and commission earned.

-- 14 Display the department number, total salary payout and total commission payout for each department.

-- 15 Display the department number and number of employees in each department.
SELECT department_id,
    COUNT(*) AS num_employees
FROM employees
GROUP BY department_id;

-- 16 Display the department number and total salary of employees in each department.
SELECT department_id,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- 17  Display the employee's name who doesn't earn a commission. Order the result set without using the column name
SELECT first_name, last_name
FROM employees
WHERE commission_pct IS NULL
ORDER BY 1, 2;

-- 18 Display the employees name, department id and commission. If an Employee doesn't earn the commission, then display as 'No commission'. Name the columns appropriately

-- 19 Display the employee's name, salary and commission multiplied by 2. If an Employee doesn't earn the commission, then display as 'No commission. Name the columns appropriately

-- 20 Display the employee's name, department id who have the first name same as another employee in the same depart

-- 21 Display the sum of salaries of the employees working under each Manager.
SELECT manager_id,
    SUM(salary) AS total_salary
FROM employees
GROUP BY manager_id;


-- 22 Select the Managers name, the count of employees working under and the department ID of the manager.

-- 23 Select the employee name, department id, and the salary. Group the result with the manager name and the employee last name should have second letter 'a!

-- 24 Display the average of sum of the salaries and group the result with the department id. Order the result with the department id.

-- 25 Select the maximum salary of each department along with the department id
SELECT department_id,
    MAX(salary) AS max_salary
FROM employees
GROUP BY department_id;

-- 26 Display the commission, if not null display 10% of salary, if null display a default value 1

-- 27 Write a query that displays the employee's last names only from the string's 2-5th position with the first letter capitalized and all other letters lowercase, Give each column an appropriate label.
SELECT SUBSTRING(last_name, 2, 4) AS 'Last Name'
FROM employees;

-- 28 Write a query that displays the employee's first name and last name along with a " in between for e.g.: first name : Ram; last name : Kumar then Ram-Kumar. Also displays the month on which the employee has joined.
-- 29 Write a query to display the employee's last name and if half of the salary is greater than ten thousand then increase the salary by 10% else by 11.5% along with the bonus amount of 1500 each. Provide each column an appropriate label.
-- 28 Display the employee ID by Appending two zeros after 2nd digit and 'E' in the end, department id, salary and the manager name all in Upper case, if the Manager name consists of 'z' replace it with '$!
-- 29 Write a query that displays the employee's last names with the first letter capitalized and all other letters lowercase, and the length of the names, for all employees whose name starts with J, A, or M. Give each column an appropriate label. Sort the results by the employees' last names
-- 30Create a query to display the last name and salary for all employees. Format the salary to be 15 characters long, left-padded with $. Label the column SALARY
-- 31 Display the employee's name if it is a palindrome
-- 32 Display First names of all employees with initcaps.
SELECT INITCAP(first_name) AS 'First Name' FROM employees;

-- 33 From LOCATIONS table, extract the word between first and second space from the STREET ADDRESS column.
-- 34 Extract first letter from First Name column and append it with the Last Name. Also add "@systechusa.com" at the end. Name the column as e-mail address. All characters should be in lower case. Display this along with their First Name.
-- 35 Display the names and job titles of all employees with the same job as Trenna.
-- 36 Display the names and department name of all employees working in the same city as Trenna.
-- 37 Display the name of the employee whose salary is the lowest.
-- 38 Display the names of all employees except the lowest paid.
-- 39 Write a query to display the last name, department number, department name for all employees.
-- 40 Create a unique list of all jobs that are in department 4. Include the location of the department in the output.
-- 41 Write a query to display the employee last name,department name,location id and city of all employees who earn commission.
-- 42 Display the employee last name and department name of all employees who have an 'a' in their last name
-- 43 Write a query to display the last name,job,department number and department name for all employees who work in ATLANTA.
-- 44. Display the employee last name and employee number along with their manager's last name and manager number.
-- 45 Display the employee last name and employee number along with their manager's last name and manager number (including the employees who have no manager).
-- 46 Create a query that displays employees last name,department number,and all the employees who work in the same department as a given employee.
-- 47 Create a query that displays the name,job,department name,salary,grade for all employees. Derive grade based on salary(>=50000=A, >=30000=B,<30000=C)
-- 48 Display the names and hire date for all employees who were hired before their managers along withe their manager names and hire date. Label the columns as Employee name, emp_hire_date,manager name,man_hire_date
-- 49 Write a query to display employee numbers and employee name (first name, last name) of all the sales employees who received an amount of 2000 in bonus.
-- 50 Fetch address details of employees belonging to the state CA. If address is null, provide default value N/A.
-- 51 Write a query that displays all the products along with the Sales OrderID even if an order has never been placed for that product.
-- 52 Find the subcategories that have at least two different prices less than $15.
-- 53 A. Write a query to display employees and their manager details. Fetch employee id, employee first name, and manager id, manager name. 
-- B. Display the employee id and employee name of employees who do not have manager.
SELECT employee_id, first_name
FROM employees e
WHERE manager_id IS NULL;

-- 54  A. Display the names of all products of a particular subcategory 15 and the names of their vendors. B. Find the products that have more than one vendor.
-- 55 Find all the customers who do not belong to any store.
-- 56 Find sales prices of product 718 that are less than the list price recommended for that product.
-- 57 Display product number, description and sales of each product in the year 2001.
-- 58 Build the logic on the above question to extract sales for each category by year. Fetch Product Name, Sales_2001, Sales_2002, Sales_2003.  
-- 59 Write a query to display the last name and hire date of any employee in the same department as SALES.
-- 60 Create a query to display the employee numbers and last names of all employees who earn more than the average salary. Sort the results in ascending order of salary.
-- 61 Write a query that displays the employee numbers and last names of all employees who work in a department with any employee whose last name contains a' u
-- 62 Display the last name, department number, and job ID of all employees whose department location is ATLANTA.
-- 63 Display the last name and salary of every employee who reports to FILLMORE.
-- 64 Display the department number, last name, and job ID for every employee in the OPERATIONS department.
-- 65 Modify the above query to display the employee numbers, last names, and salaries of all employees who earn more than the average salary and who work in a department with any employee with a 'u'in their name.
-- 66 Display the names of all employees whose job title is the same as anyone in the sales dept.
-- 67 Write a compound query to produce a list of employees showing raise percentages, employee IDs, and salaries. Employees in department 1 and 3 are given a 5% raise, employees in department 2 are given a 10% raise, employees in departments 4 and 5 are given a 15% raise, and employees in department 6 are not given a raise.
-- 68 Write a query to display the top three earners in the EMPLOYEES table. Display their last names and salaries.
SELECT last_name, salary FROM employees
ORDER BY salary desc
LIMIT 3;

-- 69 Display the names of all employees with their salary and commission earned. Employees with a null commission should have O in the commission column
-- 70 Display the Managers (name) with top three salaries along with their salaries and department information.
-- 71 Find the date difference between the hire date and resignation_date for all the employees. Display in no. of days, months and year(1 year 3 months 5 days). Emp_ID Hire Date Resignation_Date
-- 1 1/1/2000 7/10/2013
-- 2 4/12/2003 3/8/2017
-- 3 22/9/2012 21/6/2015
-- 4 13/4/2015 NULL
-- 5 03/06/2016 NULL
-- 6 08/08/2017 NULL
-- 7 13/11/2016 NULL
-- 72 Format the hire date as mm/dd/yyyy(09/22/2003) and resignation_date as mon dd, yyyy(Aug 12th, 2004). Display the null as (DEC, 01th 1900)
-- 73 Calcuate experience of the employee till date in Years and months(example 1 year and 3 months) Use Getdate() as input date for the below three questions.
-- Display the count of days in the previous quarter
-- 74 Fetch the previous Quarter's second week's first day's date
-- 75 Fetch the financial year's 15th week's dates (Format: Mon DD YYYY)
-- 76 Find out the date that corresponds to the last Saturday of January, 2015 using with clause.

-- Use Airport database for the below two question:
-- 77 Find the number of days elapsed between first and last flights of a passenger.
-- 78 Find the total duration in minutes and in seconds of the flight from Rostov to Moscow.

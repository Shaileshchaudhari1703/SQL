use hr;

-- 1. Display all information in the tables EMP and DEPT.
SELECT * FROM employees
JOIN departments ON employees.department_id = departments.department_id;

-- 2. Display only the hire date and employee name for each employee.
SELECT Hire_date,concat(first_name,' ',last_name)AS Employee_Name FROM employees;

-- 3. Display the ename concatenated with the job ID, separated by a comma and space, and name the column Employee and Title
SELECT concat(first_name,' ',last_name,' , ',Job_id)AS Employee_and_Title FROM employees;

-- 4. Display the hire date, name and department number for all clerks.
SELECT Hire_date,department_id,job_id,concat(first_name,' ',last_name)AS Employee_Name FROM Employees
WHERE Job_id LIKE '%clerk%';

-- 5. Create a query to display all the data from the EMP table. Separate each column by a comma. Name the column THE OUTPUT
SELECT concat_ws(" , ",employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)AS THE_OUTPUT FROM employees;

-- 6. Display the names and salaries of all employees with a salary greater than 2000.
SELECT First_name,Salary FROM employees
WHERE salary>2000;

-- 7. Display the names and dates of employees with the column headers "Name" and "Start Date"
SELECT concat(first_name,' ',last_name)AS Name, hire_date AS Start_Date FROM Employees;

-- 8. Display the names and hire dates of all employees in the order they were hired.
SELECT concat(first_name,' ',last_name)AS Name, Hire_date FROM Employees
ORDER BY hire_date;

-- 9. Display the names and salaries of all employees in reverse salary order.
SELECT concat(first_name,' ',last_name)AS Names, Salary FROM Employees
ORDER BY Salary DESC;

-- 10. Display 'ename" and "deptno" who are all earned commission and display salary in reverse order.
SELECT concat(first_name,' ',last_name)AS EName, department_id AS DeptNo,commission_pct,salary FROM Employees
WHERE Commission_pct IS NOT NULL
ORDER BY salary DESC;

-- 11. Display the last name and job title of all employees who do not have a manager
SELECT Last_name,job_id,manager_id FROM employees
WHERE manager_id IS NULL;

-- 12. Display the last name, job, and salary for all employees whose job is sales representative or stock clerk and whose salary is not equal to $2,500, $3,500, or $5,000
SELECT last_name,Job_id,salary FROM employees
WHERE job_id IN ('ST_CLERK','SA_REP') AND Salary NOT IN (2500,3500,5000);



-- 1) Display the maximum, minimum and average salary and commission earned.
SELECT 
MAX(salary) AS max_salary,
MIN(salary) AS min_salary,
AVG(salary) AS avg_salary,
MAX(commission_pct) AS max_commission,
MIN(commission_pct) AS min_commission,
AVG(commission_pct) AS avg_commission FROM employees;

-- 2) Display the department number, total salary payout and total commission payout for each department.
SELECT department_id, sum(salary) AS Total_Salary_Payout,sum(commission_pct) AS Total_Commission_Payout FROM employees
GROUP BY Department_id;

-- 3) Display the department number and number of employees in each department.
SELECT department_id,job_id,count(employee_id) AS Number_of_Employees FROM employees
GROUP BY Department_id,job_id;

-- 4) Display the department number and total salary of employees in each department.
SELECT department_id,job_id,sum(salary) FROM employees
GROUP BY Department_id,job_id;

-- 5) Display the employee's name who doesn't earn a commission. Order the result set without using the column name
SELECT concat(first_name,' ',last_name) AS Employee_Name,Commission_pct FROM employees
WHERE commission_pct IS NULL
ORDER BY 1;

-- 6) Display the employees name, department id and commission. If an Employee doesn't earn the commission, then display as 'No commission'. Name the columns appropriately
SELECT concat(first_name,' ',last_name) AS Employees_Name, Department_id,Commission_pct,
CASE WHEN commission_pct IS NULL THEN "No_Commission"
ELSE (Commission_pct) END AS "Commission" FROM employees;


-- 7) Display the employee's name, salary and commission multiplied by 2. If an Employee doesn't earn the commission, then display as 'No commission. Name the columns appropriately
SELECT concat(first_name,' ',Last_name) AS Employee_Name, Salary, commission_pct,
CASE WHEN commission_pct IS NULL THEN "No_Commission"
ELSE (Commission_PCT * 2) 
END AS "Commission (x2)" FROM employees;
	
-- 8) Display the employee's name, department id who have the first name same as another employee in the same department
SELECT concat(employees.first_name,' ',last_name) AS Employee_Name, employees.department_id FROM employees
JOIN departments ON employees.department_id = departments.department_id;
 
 -- 9) Display the sum of salaries of the employees working under each Manager.
SELECT sum(salary) AS Total_Salary,manager_id FROM employees
GROUP BY manager_id;

-- 10) Select the Managers name, the count of employees working under and the department ID of the manager.
-- "There are no columns in any table with the name 'manager name', so I skipped this. But if 'manager name' is available, it will work like this, as mentioned below:"

SELECT departments.manager_name,count(employees.Employee_id) AS Count_Of_Employees,employees.department_id FROM employees
JOIN departments ON departments.department_id = employees.department_id
GROUP BY Manager_name,department_id;

-- 11) Select the employee name, department id, and the salary. Group the result with the manager name and the employee last name should have second letter 'a!
-- "There are no columns in any table with the name 'manager name', so I skipped this. But if 'manager name' is available, it will work like this, as mentioned below:"
 SELECT concat(employees.first_name,' ',last_name) AS Employee_Name, employees.department_id, employees.salary, departments.manager_name FROM employees
 JOIN Departments ON departments.department_id = employees.department_id
GROUP BY concat(employees.first_name,' ',last_name), departments.manager_name, departments.department_id, employees.salary;

-- 12) Display the average of sum of the salaries and group the result with the department id. Order the result with the department id.
SELECT department_id, AVG(Salary) AS Average_Salary FROM Employees
GROUP BY Department_ID
ORDER BY department_id;

-- 13) Select the maximum salary of each department along with the department id
SELECT department_ID, max(Salary) AS MAX_Salary FROM Employees
GROUP BY department_id;

-- 14) Display the commission, if not null display 10% of salary, if null display a default value 1
SELECT commission_Pct, CASE 
WHEN commission_pct IS NOT NULL THEN salary * 0.1
ELSE 1
END AS calculated_Commission
FROM Employees;



-- 1. Write a query to display the last name, department number, department name for all employees.
SELECT last_name,employees.department_id,department_name FROM employees
JOIN departments ON employees.department_id = departments.department_id;

-- 2. Create a unique list of all jobs that are in department 4. Include the location of the department in the output.


-- 3. Write a query to display the employee last name,department name,location id and city of all employees who earn commission.
SELECT employees.last_name,
employees.commission_pct,
departments.department_name,
locations.location_id,
locations.city FROM employees

JOIN departments ON employees.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id

WHERE employees.commission_pct IS NOT NULL;

-- 4. Display the employee last name and department name of all employees who have an 'a' in their last name
SELECT employees.last_name,
departments.department_name 
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE employees.last_name LIKE '%a%';

-- 5. Write a query to display the last name,job,department number and department name for all employees who work in ATLANTA.
SELECT employees.last_name,
employees.job_id,
employees.department_id,
departments.department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id
WHERE locations.city = 'Atlanta';

-- 6. Display the employee last name and employee number along with their manager's last name and manager number.
-- "There are no columns in any table with the name 'manager name', so I skipped this. But if 'manager name' is available, it will work like this, as mentioned below:"
SELECT
employees.last_name,
employees.employee_id,
departments.manager_name,
departments.manager_id
FROM employees
JOIN departments ON employees.employee_id = departments.manager_name;

-- 7. Display the employee last name and employee number along with their manager's last name and manager number (including the employees who have no manager).
-- "There are no columns in any table with the name 'manager name', so I skipped this. But if 'manager name' is available, it will work like this, as mentioned below:"
SELECT
employees.last_name AS Employee_last_name,
employees.employee_id AS Employee_Number,
departments.manager_id AS Manager_ID,
departments.manager_name as Manager_Last_Name
FROM employees
JOIN departments ON employees.employee_id = departments.manager_id;

-- 8. Create a query that displays employees last name,department number,and all the employees who work in the same department as a given employee.
SELECT
employees.last_name AS Employee_Last_Name,
departments.department_id AS Department_Number
FROM employees
JOIN departments ON employees.department_id = departments.department_id;

-- 9. Create a query that displays the name,job,department name,salary,grade for all employees. Derive grade based on salary(>=50000=A, >=30000=B,<30000=C)
SELECT
concat(employees.First_name,' ',Last_name) AS Employee_name,
jobs.job_id AS Job,
departments.department_name,
employees.salary AS Salary
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN jobs ON jobs.job_id = employees.job_id
WHERE salary >=50000 >=30000 <=30000;

-- 10. Display the names and hire date for all employees who were hired before their managers along withe their manager names and hire date.`
-- --- Label the columns as Employee name, emp_hire_date,manager name,man_hire_date
-- "There are no columns in any table with the name 'manager name' and manager hire date , so I skipped this. But if 'manager name' is available, it will work like this, as mentioned below:"
SELECT
concat(employees.first_name,' ',last_name) AS E_Name,
employees.hire_date As E_Hire_Date,
Departments.manager_name AS M_Last_Name,
departments.manager_Hire_date as M_Hire_Date
FROM employees
join departments on employees.employee_id = departments.manager_id;




-- 1. Write a query to display the last name and hire date of any employee in the same department as SALES.
SELECT
employees.last_name, employees.hire_date,
departments.department_name,
departments.department_id
FROM employees
JOIN departments ON departments.department_id = employees.department_id
WHERE departments.department_name = 'Sales';

-- 2. Create a query to display the employee numbers and last names of all employees who earn more than the average salary. Sort the results in ascending order of salary.
SELECT
Employee_id, last_name,salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary ASC;

-- 3. Write a query that displays the employee numbers and last names of all employees who work in a department with any employee whose last name contains a' u
SELECT Employee_id, Last_name, department_id FROM employees
WHERE department_id IN (SELECT DISTINCT department_id FROM employees
WHERE last_name LIKE '%a%' OR Last_name LIKE '%u%');

-- 4. Display the last name, department number, and job ID of all employees whose department location is ATLANTA.
SELECT employees.last_name, departments.department_id, employees.job_id FROM employees
JOIN departments ON Employees.department_id = departments.department_id
JOIN locations ON locations.location_id = departments.department_id
WHERE locations.city = 'Atlanta' ; 

-- 5. Display the last name and salary of every employee who reports to FILLMORE.
-- "There are no columns in any table with the name 'manager name' and manager hire date , so I skipped this. But if 'manager name' is available, it will work like this, as mentioned below:"
SELECT employees.last_name, Employees.salary FROM employees
JOIN departments ON departments.manager_id = employees.employee_id
WHERE deparments.manager_name = 'Fillmore';

-- 6. Display the department number, last name, and job ID for every employee in the OPERATIONS department.
SELECT
departments.department_name,
employees.last_name,
employees.job_id FROM employees
JOIN departments ON departments.department_id = employees.department_id
WHERE departments.department_name = 'operations';

-- 7. Modify the above query to display the employee numbers, last names, and salaries of all
--  employees who earn more than the average salary and who work in a department with any
--  employee with a 'u'in their name.

-- 8. Display the names of all employees whose job title is the same as anyone in the sales dept.

SELECT employees.last_name, employees.job_id, jobs.job_title FROM employees
JOIN jobs ON jobs.job_id = employees.job_id
WHERE jobs.job_title LIKE '%sale%';

-- 9. Write a compound query to produce a list of employees showing raise percentages,
--  employee IDs, and salaries. Employees in department 1 and 3 are given a 5% raise,
--  employees in department 2 are given a 10% raise, employees in departments 4 and 5 are
--  given a 15% raise, and employees in department 6 are not given a raise.


-- 10. Write a query to display the top three earners in the EMPLOYEES table. Display their last names and salaries.
SELECT last_name, salary FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 11. Display the names of all employees with their salary and commission earned. Employees
--   with a null commission should have O in the commission column
SELECT concat(first_name,' ',last_name) AS Employee_Name,
Salary,
Commission_pct,
COALESCE(null, 0) AS Commission_Earned FROM Employees;


-- 1. Write a query that displays the employee's last names only from the string's 2-5th position with the first letter capitalized and all other letters lowercase,
-- Give each column an appropriate label.


-- 2. Write a query that displays the employee's first name and last name along with a " in between for e.g.: first name : Ram; last name : Kumar then Ram-Kumar.
-- Also displays the month on which the employee has joined.
SELECT 
CONCAT(first_name,'-',last_name) AS Full_Name,
Month(hire_date) as Join_month
from Employees;


-- 3. Display the employee's name if it is a palindrome
select concat(first_name,' ',last_name) As Employee_Name from Employees
where first_name or Last_name = 'Palindrome';

-- 4. Display First names of all employees with initcaps.
select (First_name) as Employee_First_name 
from Employees;



use employees;

SELECT 
    title AS 'Employees Per Job',
    SUM(employees.emp_no) AS 'Number of Employees'
FROM
    titles
        JOIN
    employees ON titles.emp_no = employees.emp_no
GROUP BY employees.emp_no , titles.title;

SELECT 
    CONCAT(employees.last_name,employees.first_name) AS 'Employee Name',
    departments.dept_no AS 'Department Number',
    departments.dept_name AS 'Department Name',
    salaries.salary AS 'Salary'
FROM
    employees
        JOIN
    dept_emp ON employees.emp_no = dept_emp.emp_no
        JOIN
    departments ON departments.dept_no = dept_emp.dept_no
        JOIN
    salaries ON salaries.emp_no = employees.emp_no
GROUP BY employees.last_name , employees.first_name , departments.dept_no , departments.dept_name , salaries.salary
order by employees.last_name asc;

SELECT 
    departments.dept_no as "Department Number",
    departments.dept_name as "Department Name",
   SUM(employees.emp_no) AS 'Number of Employees'
FROM
    departments
        JOIN
    dept_emp ON departments.dept_no = dept_emp.dept_no
        JOIN
    employees ON employees.emp_no = dept_emp.emp_no group by employees.emp_no , departments.dept_name , departments.dept_no;
   
    
    SELECT 
    employees.emp_no AS 'Employee Number',
    CONCAT(employees.first_name,
            employees.last_name) AS 'Employee Name',
    salaries.salary as 'Salary'
FROM
    employees
        JOIN
    salaries ON salaries.emp_no = employees.emp_no
GROUP BY employees.first_name , employees.last_name , employees.emp_no , salaries.salary
ORDER BY salaries.salary ASC;

SELECT 
    employees.emp_no AS 'Employee Number',
    CONCAT(employees.first_name,
            employees.last_name) AS 'Employee Name',
    salaries.salary AS 'Salary'
FROM
    employees
        JOIN
    salaries ON salaries.emp_no = employees.emp_no
WHERE
    salaries.salary < (SELECT 
            AVG(salaries.salary)
        FROM
            salaries)
GROUP BY salaries.salary,employees.emp_no ,  employees.first_name , employees.last_name;

SELECT 
    employees.emp_no AS 'Employee Number',
    CONCAT(employees.first_name,
            employees.last_name) AS 'Employee Name',
    departments.dept_name AS 'Department Name',
    titles.title 'Title'
FROM
    employees
        JOIN
    dept_emp ON employees.emp_no = dept_emp.emp_no
        JOIN
    departments ON departments.dept_no = dept_emp.dept_no
        JOIN
    titles ON titles.emp_no = employees.emp_no
WHERE
    titles.title = 'Senior Engineer'
GROUP BY departments.dept_name , employees.emp_no , employees.first_name , employees.last_name , titles.title;

   
USE employees;
SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments d
              ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01';

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm
              ON dm.emp_no = e.emp_no
         JOIN departments d
              ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
AND e.gender = 'F';

SELECT t.title AS 'Title', COUNT(*) AS 'Total'
    FROM titles AS t
        JOIN dept_emp AS de
            ON de.emp_no = t.emp_no
        JOIN departments AS d
            ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01'
AND d.dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS dm
    ON e.emp_no = dm.emp_no
JOIN salaries AS s
ON s.emp_no = e.emp_no
JOIN departments AS d
    ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01';

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Employee',
       departments.dept_name AS 'Department',
       CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager'
    FROM employees
    JOIN dept_emp AS de
        ON employees.emp_no = de.emp_no
    LEFT JOIN departments
        ON de.dept_no = departments.dept_no
    LEFT JOIN dept_manager AS dm
        ON departments.dept_no = dm.dept_no
    LEFT JOIN employees AS managers
        ON dm.emp_no = managers.emp_no
WHERE de.to_date = '9999-01-01'
AND dm.to_date = '9999-01-01';



# SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
# FROM employees as e
#          JOIN dept_emp as de
#               ON de.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = de.dept_no
# WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

USE employees;
SELECT *
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);

SELECT COUNT(*) AS 'Number of Employees', title AS "Title"
FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod')
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date LIKE '9%')
AND gender = 'F';

SELECT dept_name
FROM departments
WHERE dept_no IN (SELECT dept_no
                  FROM dept_manager
                  WHERE to_date LIKE '9%'
                  AND emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F'))
ORDER BY dept_name;

SELECT first_name, last_name
FROM employees
WHERE emp_no = (SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 1);
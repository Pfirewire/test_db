USE employees;
SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;
SELECT *
FROM employees
WHERE last_name LIKE 'E%';
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
ORDER BY emp_no DESC;
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;
SELECT datediff(now(), hire_date) AS 'Days since Hire'
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12
AND DAY(birth_date) = 25
ORDER BY hire_date DESC, birth_date;
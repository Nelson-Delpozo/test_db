USE employees;

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ORDER BY last_name, first_name;

SELECT * FROM employees;
#
SELECT * FROM employees WHERE last_name LIKE '%q%';
#
SELECT * FROM employees WHERE last_name LIKE '%e' OR last_name LIKE 'e%' ORDER BY emp_no;

SELECT CONCAT (first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%e' ORDER BY emp_no;
#
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE last_name LIKE '%e' OR last_name LIKE 'e%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE 'e%e' ORDER BY emp_no DESC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 10;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 25 OFFSET 50;

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999 ORDER BY birth_date ASC , hire_date DESC;

SELECT CONCAT (first_name, ' ', last_name), FLOOR(datediff(CURDATE(), hire_date)/365) FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999;






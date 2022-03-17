USE employees;

SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' ORDER BY last_name, first_name;

SELECT * FROM employees;
#
SELECT * FROM employees WHERE last_name LIKE '%q%';
#
SELECT * FROM employees WHERE last_name LIKE '%e' OR last_name LIKE 'e%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE 'e%e' ORDER BY emp_no;
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





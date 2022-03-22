USE employees;

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees WHERE last_name LIKE 'e%e' GROUP BY last_name;

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'e%e' GROUP BY last_name, first_name;

SELECT last_name, count(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT gender, count(gender) FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' GROUP BY gender;

SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name
ORDER BY last_name;



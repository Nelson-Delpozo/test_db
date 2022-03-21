USE employees;

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS name, employees.hire_date AS hire_date
FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE employees.emp_no = 101010);

SELECT titles.title AS title, CONCAT(employees.first_name, ' ', employees.last_name) AS name
FROM titles JOIN employees ON titles.emp_no = employees.emp_no
WHERE employees.first_name = 'Aamod';



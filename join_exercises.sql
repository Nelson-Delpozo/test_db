# USE join_test_db;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users RIGHT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM roles LEFT JOIN users ON users.role_id = roles.id;

USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no;

SELECT dept_name
FROM departments;

SELECT emp_no
FROM dept_manager;

SELECT departments.dept_name AS department, CONCAT(employees.first_name, ' ', employees.last_name) AS manager
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees on dept_manager.emp_no = employees.emp_no
WHERE to_date = '9999-01-01';

SELECT departments.dept_name AS department, CONCAT(employees.first_name, ' ', employees.last_name) AS manager
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees on dept_manager.emp_no = employees.emp_no
WHERE to_date = '9999-01-01'
  AND gender = 'F';

SELECT titles.title AS title, COUNT(all title) AS count
FROM titles
JOIN employees ON titles.emp_no = employees.emp_no
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
WHERE dept_no = 'd009'
AND titles.to_date = '9999-01-01'
GROUP BY titles.title;

















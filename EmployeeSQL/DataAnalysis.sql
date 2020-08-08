-- Question 1. 

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees as e 
    LEFT JOIN salaries as s 
    ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no
;

-- Question 2

SELECT e.emp_no, e.first_name, e.last_name
FROM employees as e 
WHERE e.hire_date >= '1986-01-01' AND e.hire_date <'1987-01-01'
;

-- Question 3

SELECT dmgr.dept_no, dep.dept_name, e.emp_no, e.last_name, e.first_name
FROM depart_mgr as dmgr 
INNER JOIN departments as dep 
ON dep.dept_no = dmgr.dept_no
INNER JOIN employees as e 
ON dmgr.emp_no = e.emp_no;

-- Question 4

SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, dpt.dept_name
FROM employees as e 
INNER JOIN depart_emp as de 
ON e.emp_no = de.emp_no
INNER JOIN departments as dpt 
ON de.dept_no = dpt.dept_no

-- Question 5

SELECT e.last_name, e.first_name, e.sex
FROM employees as e
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- Question 6 

SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, dpt.dept_name
FROM employees as e 
INNER JOIN depart_emp as de 
ON e.emp_no = de.emp_no
INNER JOIN departments as dpt 
ON de.dept_no = dpt.dept_no
WHERE de.dept_no = 'd007'

--Question 7 

SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, dpt.dept_name
FROM employees as e 
INNER JOIN depart_emp as de 
ON e.emp_no = de.emp_no
INNER JOIN departments as dpt 
ON de.dept_no = dpt.dept_no
WHERE de.dept_no = 'd007' OR de.dept_no = 'd005'

--Question 8

SELECT e.last_name, count(last_name) as "Count of Last Name"
FROM employees as e
GROUP BY last_name
ORDER BY count(last_name) DESC;



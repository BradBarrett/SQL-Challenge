DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(5) NOT NULL,
    hire_date DATE NOT NULL,
    Primary key (emp_no)
);

SELECT * FROM employees

DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(50) NOT NULL,
    Primary key (dept_no)
);

SELECT * FROM departments


DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
    title_id VARCHAR(25) NOT NULL,
    title VARCHAR(50) NOT NULL
);

SELECT * FROM titles

DROP TABLE IF EXISTS depart_mgr;
CREATE TABLE depart_mgr (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM depart_mgr

DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

SELECT * FROM salaries

DROP TABLE IF EXISTS depart_emp;
CREATE TABLE depart_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

SELECT * FROM  depart_emp

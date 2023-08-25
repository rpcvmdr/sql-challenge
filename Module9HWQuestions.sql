/*
MODULE 9 SQL CHALLENGE HOMEWORK
SQL SCRIPTS WITH ANSWERS TO 8 QUESTIONS FROM PEWLETTHACKARDSTAFF_DB DATABASE
COMPRISING 6 TABLES

PREPARED BY: MICHAEL ROBERTS
*/

--Question #1 - List employee number, last name, first name, sex and salary of each employee - 300,024 records.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salaries
	FROM employees e LEFT JOIN salaries s
	ON e.emp_no = s.emp_no
	ORDER BY (e.emp_no);
--
--Question #2 - List the first name, last name, hire date for employees hired in 1986 - 3,081 records.
--

SELECT first_name, last_name, hire_date
	FROM employees
	WHERE hire_date BETWEEN '1986-12-01' AND '1986-12-31'
	ORDER BY (hire_date);
--
/* 
Question #3 - List manager of each department, their dept. number, dept. name, employee
number,last name and first name - 24 records
*/
--
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, t.title
	FROM titles t INNER JOIN employees e
	ON t.title_id = e.emp_title_id
	INNER JOIN dept_manager dm
	ON e.emp_no = dm.emp_no
	INNER JOIN departments d 
	ON dm.dept_no = d.dept_no
	ORDER BY dept_name, last_name;
--	
/*
Question #4 - List the dept. number for each employee, their employee number, last name,
first name, and dept. name - 331,603 records.
*/
--
SELECT e.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
	FROM employees e INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no
	INNER JOIN departments d
	ON de.dept_no = d.dept_no
	ORDER BY emp_no;
--
/*
Question #5 - List the first name, last name, sex of each employee whose first name is Hercules
and last name begins with the letter B. - 20 records
*/

SELECT first_name, last_name, sex
	FROM employees
	WHERE first_name = 'Hercules' 
	AND last_name LIKE 'B%'
	ORDER BY last_name;
--
/*
Question #6 - List each employee in the Sales Dept., including employee number, last name
and first name - 52,245 records.
*/
--
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees e INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no
	INNER JOIN departments d
	ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'
	ORDER BY emp_no;
--
/*
Question #7 - List each employee in the Sales and Development Depts., including employee 
number, last name and first name - 137,952 records.
*/
--
--1st sorted by dept_name ascending
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees e INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no
	INNER JOIN departments d
	ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development'
	ORDER BY (dept_name, last_name, first_name);

--2nd sorted by dept_name descending, the by last_name, then first name, both ascending
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
	FROM employees e INNER JOIN dept_emp de
	ON e.emp_no = de.emp_no
	INNER JOIN departments d
	ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development'
	ORDER BY (dept_name)desc, last_name, first_name;
--
/*
Question #8 - List the frequency counts, in decending order, of all the employee last names
(i.e., how many employees share the same last name) - 1,638 records.
*/
--
SELECT last_name, COUNT(last_name) AS "#Staff With Same Name" 
	FROM employees
	GROUP BY last_name
	ORDER BY ("#Staff With Same Name")desc;
--	


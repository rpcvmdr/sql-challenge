--Delete dept_emp table
--DROP TABLE dept_emp;

--Create dept_emp table
CREATE TABLE dept_emp(
	emp_no	INT 	NOT NULL,
	dept_no	VARCHAR(15) NOT NULL,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

--Confirm creation of dept_emp table
SELECT * FROM dept_emp;

--Import dept_emp.csv file into dept_emp table and confirm
SELECT * FROM dept_emp;
--ORDER BY (emp_no)desc;




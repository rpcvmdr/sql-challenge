--Delete dept_manager table
--DROP TABLE dept_manager;

--Create dept_manager table
CREATE TABLE dept_manager(
	dept_no		VARCHAR(15)	NOT NULL,
	emp_no		INT	 	NOT NULL,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);
--Confirm creation of table
SELECT * FROM dept_manager;

--Import and confirm dept_manager.csv file

SELECT * FROM dept_manager;


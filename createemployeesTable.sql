--Drop employees table
--DROP TABLE employees;

--Create employees table

CREATE TABLE employees(
	emp_no			INT				NOT NULL,
	emp_title_id	VARCHAR(20)		NOT NULL,
	birthdate		DATE			NOT NULL,
	first_name		VARCHAR(30)		NOT NULL,
	last_name		VARCHAR(30)		NOT NULL,
	sex				VARCHAR(2)		NOT NULL,
	hire_date		DATE			NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
); 
--Confirm that employees table is correctly created

SELECT * FROM employees;

/*
Now import employees.csv file
Confirm that employees.csv file was correctly imported
*/

SELECT * FROM employees;


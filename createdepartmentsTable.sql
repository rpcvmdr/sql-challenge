--Drop departments table
--DROP TABLE departments;

--Create departments table
CREATE TABLE departments(
	dept_no		VARCHAR(15)	NOT NULL,
	dept_name	VARCHAR(30)	NOT NULL,
	PRIMARY KEY(dept_no)
);
--Confirm creation of table
SELECT * FROM departments;

--Import departments.csv file and confirm its existence
SELECT * FROM departments;





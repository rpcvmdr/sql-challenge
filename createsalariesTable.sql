--Delete salaries table
--DROP TABLE salaries;

--Create salaries table
CREATE TABLE salaries(
	emp_no		INT		NOT NULL,
	salaries	MONEY	NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
	);
--Confirm that salaries table was created successfully	
SELECT * FROM salaries;

--Import salaries.csv file into salaries table

SELECT * FROM salaries;



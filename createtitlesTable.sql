--Drop titles table
DROP TABLE titles;

--Create titles table
CREATE TABLE titles(
	title_id 	VARCHAR(20) NOT NULL,
	title		VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);
--Imput titles.csv file into titles table and confirm data was successfully imputted 
SELECT * FROM titles;

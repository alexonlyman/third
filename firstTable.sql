CREATE TABLE employee(
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(6) NOT NULL,
age INT NOT NULL);
	INSERT INTO employee (first_name, last_name, gender,age) VALUES ('Dim', 'Mitrich', 'male', 22);
	INSERT INTO employee (first_name, last_name, gender,age) VALUES ('Valera', 'Mitrich', 'male', 23);
	INSERT INTO employee (first_name, last_name, gender,age) VALUES ('Kolyz', 'Mitrich', 'male', 24);
	
SELECT * FROM employee;

UPDATE employee SET first_name = 'Misha', last_name = 'Lokov' WHERE id = 1;
DELETE FROM employee WHERE id = 2;

SELECT * FROM employee;
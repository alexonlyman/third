CREATE TABLE employee(
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(6) NOT NULL,
age INT NOT NULL);
	INSERT INTO employee (first_name, last_name, gender,age) VALUES ('Dim', 'Mitrich', 'male', 22);
	INSERT INTO employee (first_name, last_name, gender,age) VALUES ('Valera', 'Koroloev', 'male', 33);
	INSERT INTO employee (first_name, last_name, gender,age) VALUES ('Vanya', 'Antonov', 'male', 44);
	
SELECT * FROM employee;

UPDATE employee SET first_name = 'Nisha', last_name = 'Lokov' WHERE id = 1;
DELETE FROM employee WHERE id = 2;

SELECT * FROM employee;

INSERT INTO employee (first_name, last_name, gender,age) VALUES ('Petya', 'Genadev', 'male', 55);
INSERT INTO employee (first_name, last_name, gender,age) VALUES ('Kolya', 'Voklov', 'male', 66);

SELECT first_name AS Имя, last_name AS Фамилия;
SELECT * FROM employee WHERE age <30 OR >50;
SELECT * FROM employee WHERE age BETWEEN 30 AND 50;
SELECT * FROM employee ORDER BY last_name DESC;
SELECT * FROM employee WHERE LENGTH(first_name)>4;

UPDATE employee SET first_name 'Kolya', WHERE first_name 'Dim';
UPDATE employee SET first_name 'Petya', WHERE first_name 'Vanya';

SELECT first_name AS Имя, SUM(age) AS Суммарный_возраст FROM employee GROUP BY Имя;
SELECT first_name, age FROM employee WHERE age=(SELECT MIN(age) FROM employee);
SELECT first_name, age FROM employee WHERE age IN(SELECT MAX(age) FROM employee GROUP BY first_name HAVING COUNT(first_name)>1)ORDER BY 2;


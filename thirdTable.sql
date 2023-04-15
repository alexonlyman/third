CREATE TABLE city(
city_id BIGSERIAL NOT NULL PRIMARY KEY,
city_name VARCHAR (60)
);
INSERT INTO city (city_name) VALUES ('Moskva');
INSERT INTO city (city_name) VALUES ('Bagdad');
INSERT INTO city (city_name) VALUES ('Parij');
INSERT INTO city (city_name) VALUES ('Cape Town');
INSERT INTO city (city_name) VALUES ('Minsk');


CREATE TABLE employee(
id BIGSERIAL NOT NULL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
gender VARCHAR(6) NOT NULL,
city_id INT NOT NULL,
age INT NOT NULL,
FOREIGN KEY (city_id) REFERENCES city(city_id));

INSERT INTO employee (first_name, last_name, gender,city_id,age) VALUES ('Dim', 'Mitrich', 'male',1, 22);
INSERT INTO employee (first_name, last_name, gender,city_id,age) VALUES ('Valera', 'Valerich', 'male',2, 44);
INSERT INTO employee (first_name, last_name, gender,city_id,age) VALUES ('Kolyya', 'Genadich', 'male',3, 55);
INSERT INTO employee (first_name, last_name, gender,city_id,age) VALUES ('Petya', 'Gerasimov', 'male',4, 33);
INSERT INTO employee (first_name, last_name, gender,city_id,age) VALUES ('Ignat', 'Petrov', 'male',5, 66);

SELECT first_name, last_name, city_name
FROM employee
INNER JOIN city
ON employee.city_id=city.city_id;

SELECT first_name, last_name, city_name
FROM employee
LEFT JOIN city
ON employee.city_id=city.city_id;

SELECT first_name, last_name, city_name
FROM employee
FULL JOIN city
ON employee.city_id=city.city_id;

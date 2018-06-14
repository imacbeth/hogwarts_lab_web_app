DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses(
  id SERIAL4 PRIMARY KEY,
  name varchar(255),
  logo_url varchar(255)
);

CREATE TABLE students(
id SERIAL4 PRIMARY KEY,
first_name varchar(255),
last_name varchar(255),
house_id INT4 REFERENCES houses(id),
age INT4

);

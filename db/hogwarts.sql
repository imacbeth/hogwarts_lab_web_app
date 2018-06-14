DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses(
  id SERIAL4,
  name varchar(255),
  logo_url varchar(255)
);

CREATE TABLE students(
id SERIAL4,
first_name varchar(255),
last_name varchar(255),
house varchar(255),
age INT4
);

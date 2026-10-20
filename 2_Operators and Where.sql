CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUE
(107,"anil",78,"A","pune"),
(108,"anil",78,"A","mumbai"),
(109,"anil",78,"A","pune"),
(110,"anil",78,"A","delhi"),
(111,"anil",78,"A","thane"),
(112,"anil",78,"A","delhi");

SELECT * FROM student;
SELECT name, marks FROM student;
SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE city = "Mumbai";
SELECT * FROM student WHERE marks>=80;
SELECT * FROM student WHERE city = "pune" and marks >=80;
SELECT * FROM student WHERE marks != 80;








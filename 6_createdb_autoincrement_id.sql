create database if not exists college;
use college;

create table students(
	rollno int primary key auto_increment,
    name varchar (50),
    marks int not null,
    grade varchar(1),
    city varchar(20)

) auto_increment = 101;
-- Alter table students auto_increment = 101;-- 
-- if the table already exists we can write Alter table students auto_increment = 101 
insert into students
(name, marks, grade, city)
values
("sagar",45,"A","Delhi"),
("rohit",42,"B","Dehradun"),
("rahul",12,"C","Mumbai"),
("shaun",23,"D","Nagpur");

select * from students;
select grade, count(name)
from students
group by grade
order by grade;

update students set grade = "O" WHERE grade = "A";
update students set grade = "F" where marks between 10 and 30;
update students set grade = "B" where marks between 30 and 50;
update students set marks = marks + 7;
DELETE FROM students where marks < 21;
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

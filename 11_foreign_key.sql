use college;
CREATE TABLE IF NOT EXISTS students(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS dept(
id INT primary key,
name varchar(50)
);

/*
Since 
dept primary kes is linked with dept foreign key so 
dept - id primary key (Parent Table)
teacher - id primary key - dept - foreign key (child table)
*/

INSERT into dept
values 
("101","english"),
("102","IT");
update dept
set id = 111
where id = 101;
select * from dept;



CREATE TABLE IF NOT EXISTS teachers(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);
insert into teachers
values
(101,"adam",101),
(102,"eve",102);
select * from teachers;

drop table teachers;
drop table dept;





Create database if not exists practice;
use practice;

create table temp1(
id INT,
name VARCHAR(50),
age INT,
city VARCHAR(20),
primary key (id,name)
);


create table employee (
id INT,
salery INT default 25000
);
insert into employee (id) values (101);
select * from employee;

insert into temp1 values (101);
insert into temp1 values (101);
select * from temp1;
drop table temp1;
drop database xyz;
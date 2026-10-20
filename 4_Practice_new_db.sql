CREATE DATABASE XYZ;
use XYZ;

CREATE TABLE employee_info(
	id int primary key,
    employee_name varchar(50),
    salery int
);

select * from employee_info;

INSERT INTO employee_info
(id, employee_name, salery)
VALUES
(1, "sagar",25000),
(2, "shaun",30000),
(3, "mozu",40000);

INSERT INTO employee_info values (4,"astha",54000);
select * from employee_info;

DROP TABLE IF EXISTS employee_info;



/* 
Create a database for your company named XYZ. 

Step 1 - Crete a table inside this DB to store employee info (id, name ans salaray).
Step 2 - Add following information in the DB:
			sr no, name, salary
step 3 - select and view all your table
*/

Create database if not exists Company_XYZ;
use company_xyz;
create table employee_info(
	srno int primary key,
    name varchar(50),
    salary int);
    
INSERT INTO employee_info
(srno, name, salary)
values
(1, "sagar", 15000),
(2, "rohit", 34000),
(3, "rahul", 54000);

select * from employee_info;

DROP database if exists company_xyz;
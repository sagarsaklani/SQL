/*
Select in detail

use to select any data form the database 

Basic Syntax
SELECT col1, col2 FROM table_name;

To Select All
SELECT*FROM table_name;
*/
select * from students;
select name from students;
select DISTINCT city from Students;

/*
Where Clause

to define some conditions

SELECT col1, col2 From table_name
Where conditions
*/

select * from students where marks > 40;
select * from students where marks > 40 or city = "mumbai";


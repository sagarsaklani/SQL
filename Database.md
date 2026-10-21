Database



Database is a collection of data in a format that can be easily accessed (Digital)

A software application used to manage out DB is called DBMS.





Types of Databases



Ralational

Data stored in tables

My SQL

Otacle

postgre SQL

Microsoft SQL server





Non - relational(NoSQL)

data not stored in tables. i.e. they dont dont understand tables.

1\. Mongo DB - Most popular.

What is SQL?

Structured Query Language

SQL is a programming language used to interact with relational databases.



It is used to perform CRUD operations:

Create

Read

Update

Delete



SEQUEL

Structured English Query Language

SQL

Structured Query Language





Creating our First Database

CREATE DATABASE db\_name; -> to create a database

DROP DATABASE db\_name; -> to delete a database





USE db\_name;



CREATE TABLE table\_name(

&#x09;column\_name1 datatype constraint,

&#x09;column\_name2 datatype constraint,

&#x09;column\_name3 datatype constraint

);



E.G.

CREATE TABLE student(

&#x09;id INT PRIMARY KEY,

&#x09;name CARCHAR(50),

&#x09;age INT NOT NULL

);



Types of Data Types

They define the type of values that can be stored in a column.

CHAR - string (0-255), can store character of fixed length - CHAR(50)

VARCHAR - string (0-255), can store characters up to given length - VARCHAR(50)

BLOB - string (0-65535), can store binary large object - BLOB(1000)

INT

TINYINT

BIGINT

BIT - can store x-bit values. x can range from 1 to 64 - BIT(2)

FLOAT - Decimal number - with precision to 23 digits - FLOAT

DOUBLE - DEccimal umber - with 24 to 53 digis - DOUBLE

BOOLEAN - Boolean values 0 or 1 - BOOLEAN

DATE

YEAR



Signed and Unsigned - numberic data types which stored data types where

TINYINT UNSIGNED (0 to 255) -> this means unsigned data type



TINYINT (-128 to 127) -> this means signed data type



Types of SQL Commands



DDL (Data Definition Language): create, alter, rename, truncate and drop

DQL (Data Query Language): select

DML (Data Manipulation Language): insert, update and delete

DCL (Data Control Language): grant \& revoke permission to users

TCL (Transaction Control Language): start transaction, commit, rollback -> This comes in advance DBMS.



Table related Queries



SELECT\*FROM table\_name; ---> \* means all this means select all from the table and \* means all



Keys

Primary Key

It is a column (or set of columns) in a table that uniquely identifies each row. (a unique id)

There is only 1 PK \& it should be NOT null.



Foreign Key

A foreign key is a column (or set of columns) in a table that refers to the primary key.

There can b multiple FKs.

FKs can have duplicate \& null values.



Constraints

SQL constraints are used to specify rules for data in a table.

NOT NULL - columns cannot have a null value - col1 int NOT NULL.

UNIQUE - all values in column are different - col2 int UNIQUE.

PRIMARY KEY - makes a column unique \& not null but used only for one in a table.



4\. FOREIGN KEY - prevent actions that would destroy link between tables.

CREATE TABLE temp(

&#x09;cust\_id int,

&#x09;FOREIGN KEY (cust\_id) reference customer(id) --> Here customer(id) is the reference from a different table.

);



5\. DEFAULT - sets the default value of a column

&#x09;salary INT DEFAULT 25000





6\. CHECK - It can limit the values allowed in a column

CREATE TABLE city(

&#x09;id INT PRIMARY KEY,

&#x09;city VARCHAR(50),

&#x09;age INT,

&#x09;CONSTRAINT age\_check CHECK (age >= 18 AND city="Delhi")

);



CREATE TABLE newTab(

&#x09;age INT CHECK (age >= 18)

);







Select in Detail

used to select any data from database



Basic Syntax

SELECT col, col2 FROM table\_name;



To Select All

SELECT \* FROM table\_name;





Where Clause

To define some conditions

SELECT col1, col2 FROM table\_name

WHERE conditions;



e.g.

SELECT \* FROM student WHERE marks > 80;

SELECT \* FROM student WHERE city = "Mumbai";



Using Operators in WHERE

Arithmetic Operators: +(addition), -(subtraction), \*(multiplication), /(division), %(modulus)

Comparison Operators: =(equal to), !=(not equal to), >, >=, <, <=

Logical Operators: AND, OR, NOT, IN, BETWEEN, All, LIKE, ANY

Bitwise Operators: \& (Bitwise AND), |(Bitwise OR)





Operators

AND (to check for both conditions to be true)

SELECT \* FROM student WHERE marks > 80 AND city = "Mumbai";



OR (to check for one of the conditions to be true)

SELECT \* FROM student WHERE marks > 90 or city = "Mumbai";



Between (select for a given range) - This means they are inclusive

SELECT \* FROM student WHERE marks BETWEEN 80 AND 90;



In (matches any value in the list)

SELECT \* FROM student WHERE city IN ("DELHI","MUMBAI");



NOT (to negate the given condition)

SELECT \* FROM student WHERE city NOT IN ("DELHI","MUMBAI")



Clauses

Limit Clause

sets an upper limit on number of (tuples) rows to be returned 

SELECT \* FROM students LIMIT 3;

SELECT col1, col2 FROM table\_name

LIMIT number;

Order by Clause

To sort in ascending (ASC) or descending order (DESC)

SELECT \* FROM students ORDER BY city ASC;

SELECT col1, col2 from students ORDER BY col\_name(s) ASC;



Aggregate Functions

Aggregate functions perform a calculation on a set of values, and return a single value.

COUNT()

MAX()

MIN()

SUM()

AVG()



Eg. 

Select avg(marks) from student;

Select max(marks) from student;



Group By Clause - Usually we use this with aggregation function. 

Groups rows that have the same values into summary rows.

It collects data from multiple records and groups the result by one or more column.



Generally we use group by with some aggregation function.



Count number of students in each city.

Eg. SELECT city, count(name) FROM student GROUP BY city;





Having Clause - similar to Where Clause (in some cases we cant use where clause there we require the need of having clause)

Similar to Where i.e applies some condition on rows.

Used when we want to apply any condition after grouping. 

Count number of students in each city where max marks cross 90.



Select count(name), city 

from students

group by city

Having max(marks) > 90;



##### General Order 

##### Select column(s)

##### FROM table\_name

##### WHERE condition

##### GROUP BY column(s)

##### HAVING condition

##### ORDER BY column(s) ASC;



###### ***Table related Queries***

**Update (to update existing rows)**



UPDATE table\_nme

SET col1 = val1, col2 = val2

WHERE condition;



UPDATE student

SET grade = "O"

Where grade = "A"



Delete (to delete existing rows)



DELETE FROM table\_name

WHERE condition;



DELETE FROM student

WHERE marks < 33;


















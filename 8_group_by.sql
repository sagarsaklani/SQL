use college;

select count(name)
from students;

select city,name, count(rollno) 
from students 
group by city, name;

select city, avg(marks) from students group by city order by avg(marks) desc;
-- by default it aranges in asc order 


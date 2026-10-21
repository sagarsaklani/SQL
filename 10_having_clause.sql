/*
General Order 
Select column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s) ASC;
*/

use college;

Select city, count(rollno)
from students
-- where max(marks) > 40, 
group by city
having max(marks > 40);

SELECT city
FROM students
WHERE grade = "A"
group by city
having max(marks) >= 40;

select * from students

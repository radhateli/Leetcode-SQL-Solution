# Write your MySQL query statement below
SELECT name, bonus 
from Employee as a
left join Bonus as b
on a.empId = b.empId 
having (bonus<1000) or bonus is null
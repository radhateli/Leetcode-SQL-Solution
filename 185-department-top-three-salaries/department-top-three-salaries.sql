# Write your MySQL query statement below
select b.name as Department, a.name as Employee, a.salary as Salary 
from Employee a 
inner join Department b 
on a.departmentID = b.id
where 3 > (select count(DISTINCT (c.Salary))
          from Employee c
          where c.Salary > a.Salary 
          and a.DepartmentId = c.DepartmentId)
# Write your MySQL query statement below
select a.id
from Weather as a 
join Weather as b 
on a.recordDate = Date_add(b.recordDate,  INTERVAL 1 day) 
where a.temperature > b.temperature 
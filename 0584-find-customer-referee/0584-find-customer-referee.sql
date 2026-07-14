# Write your MySQL query statement below
SELECT name
FROM Customer
WHERE not (referee_id = 2) 
OR referee_id is null;
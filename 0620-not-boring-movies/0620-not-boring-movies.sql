# Write your MySQL query statement below
SELECT * 
FROM cinema 
WHERE NOT((id % 2 = 0) or (description = "boring")) 
order by rating DESC 
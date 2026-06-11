# Write your MySQL query statement below
SELECT * 
FROM cinema 
WHERE NOT((id % 2 = 0) OR (description = "boring")) 
ORDER BY rating DESC 
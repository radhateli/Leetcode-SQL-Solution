# Write your MySQL query statement below
SELECT a.user_id, round(
    AVG(CASE
        WHEN action = 'confirmed' THEN 1
        ELSE 0
    END
), 2) as confirmation_rate
FROM Signups as a
LEFT JOIN Confirmations as b
ON a.user_id = b.user_id 
GROUP BY a.user_id;
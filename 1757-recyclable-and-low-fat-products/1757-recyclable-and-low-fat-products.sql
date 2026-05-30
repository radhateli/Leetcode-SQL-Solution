# Write your MySQL query statement below
SELECT product_id 
FROM products
WHERE (low_fats = recyclable)
AND (low_fats = "Y");
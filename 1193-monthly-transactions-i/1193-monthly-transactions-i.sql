# Write your MySQL query statement below
select left(trans_date, 7) as month, country, count(*) as trans_count, sum(amount) as trans_total_amount, sum(CASE WHEN state = 'approved' THEN 1 ELSE 0 END) as approved_count, sum(
    CASE WHEN state = 'approved' THEN amount ELSE 0
    END ) as approved_total_amount 
from Transactions
group by month, country 
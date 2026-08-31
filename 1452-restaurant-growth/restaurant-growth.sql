# Write your MySQL query statement below
select visited_on, (select sum(amount)
                    from Customer 
                    where visited_on between DATE_SUB(a.visited_on, INTERVAL 6 day)
                    and a.visited_on ) as amount,

            round((select sum(amount)/7
                   from Customer
                   where visited_on between DATE_SUB(a.visited_on, INTERVAL 6 day) 
                   and a.visited_on
                ),2 ) as average_amount
from Customer a 
where visited_on >= (select DATE_ADD(min(visited_on), INTERVAL 6 day)
                    from Customer)
group by visited_on
order by visited_on 
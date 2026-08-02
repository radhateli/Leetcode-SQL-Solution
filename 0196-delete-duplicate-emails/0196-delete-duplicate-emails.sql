# Write your MySQL query statement below
delete from Person 
where id not in (
    select id 
    from (
        select min(id) AS id
        from Person 
        group by email
        ) temp
    )
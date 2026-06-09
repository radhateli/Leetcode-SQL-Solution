# Write your MySQL query statement below
select a.student_id, a.student_name, b.subject_name, count(c.student_id) as attended_exams
from Students as a
cross join subjects as b
left join examinations as c   
on a.student_id = c.student_id
AND b.subject_name = c.subject_name
group by student_id, student_name, subject_name
order by student_id, subject_name
select s.student_id, s.student_name, sub.subject_name, count(e.subject_name) attended_exams 
from Students s cross join Subjects sub left join Examinations e
on sub.subject_name = e.subject_name
and s.student_id = e.student_id
group by s.student_id, s.student_name, sub.subject_name
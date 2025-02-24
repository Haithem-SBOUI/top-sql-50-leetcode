select m.employee_id, m.name, count(e.employee_id) reports_count , round(avg(e.age)) average_age 
from Employees m join Employees e
On m.employee_id = e.reports_to
group by m.employee_id
order by m.employee_id
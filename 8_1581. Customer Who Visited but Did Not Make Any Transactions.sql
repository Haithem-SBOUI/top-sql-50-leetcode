select customer_id, count(v.visit_id) count_no_trans
from Visits v
left outer join Transactions t on v.visit_id = t.visit_id
where transaction_id is null
group by v.customer_id
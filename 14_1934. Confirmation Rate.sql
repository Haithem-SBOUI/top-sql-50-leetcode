select s.user_id, IFNULL(ROUND(SUM(IF(c.action = 'confirmed', 1, 0)) / COUNT(c.action), 2), 0) as confirmation_rate
from Signups s left join Confirmations c on s.user_id = c.user_id
group by 1
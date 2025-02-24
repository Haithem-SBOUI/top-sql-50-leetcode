SELECT r.contest_id , ROUND((COUNT(*) / (select count(*) from Users)) * 100, 2) percentage 
FROM Users u
JOIN Register r ON u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage desc, r.contest_id
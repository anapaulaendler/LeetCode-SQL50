SELECT s.user_id, ROUND((SUM(IF(c.action = "confirmed", 1, 0)) / COUNT(*)), 2) AS confirmation_rate
FROM Signups s
LEFT JOIN
Confirmations c ON s.user_id = c.user_id
GROUP BY
s.user_id;
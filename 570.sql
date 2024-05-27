SELECT e1.name
FROM Employee e1
JOIN (SELECT managerId FROM Employee GROUP BY managerId HAVING COUNT(managerId) >= 5) e2
On e1.id = e2.managerId;
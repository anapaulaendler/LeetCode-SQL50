SELECT *
FROM Cinema
WHERE id % 2 <> 0 -- same as !=, but <> is standard SQL-92 
AND description <> "boring"
ORDER BY rating DESC
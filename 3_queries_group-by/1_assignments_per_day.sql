SELECT * FROM assignments;

SELECT day, count(name) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;

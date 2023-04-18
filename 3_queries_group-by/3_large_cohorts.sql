SELECT * FROM cohorts;

SELECT * FROM students;

SELECT 
	c.name as cohort_name, 
	count(s.*) as student_count 
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
GROUP BY c.name
HAVING count(s.*) >= 18
ORDER BY count(s.*);
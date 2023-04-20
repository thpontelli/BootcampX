WITH temp_table as(
	SELECT 
		c.name, 
		SUM(ar.completed_at - ar.started_at) as total_duration
	FROM cohorts c
	JOIN students s ON s.cohort_id = c.id
	JOIN assistance_requests ar ON ar.student_id = s.id
	GROUP BY c.name
	ORDER BY total_duration
)
SELECT AVG(total_duration) as average_total_duration
FROM temp_table;







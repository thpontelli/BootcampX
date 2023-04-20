SELECT * FROM assistance_requests;
SELECT * FROM teachers;
SELECT * FROM students;


SELECT 
	c.name, 
	AVG(ar.completed_at - ar.started_at) as average_assistance_time
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assistance_requests ar ON ar.student_id = s.id
GROUP BY c.name
ORDER BY average_assistance_time DESC
LIMIT 1;
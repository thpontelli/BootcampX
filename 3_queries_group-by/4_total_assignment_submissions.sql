SELECT * FROM cohorts;
SELECT * FROM assignment_submissions;
SELECT * FROM students;

SELECT 
	c.name as cohort, 
	count(a.*) as total_submissions
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assignment_submissions a ON a.student_id = s.id
GROUP BY c.name
ORDER BY total_submissions DESC;



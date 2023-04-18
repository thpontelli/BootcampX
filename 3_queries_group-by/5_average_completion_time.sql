SELECT * FROM cohorts;
SELECT * FROM assignment_submissions;
SELECT * FROM students;
SELECT * FROM assignments;

SELECT 
	s.name as student, 
	AVG(a.duration) as average_assignment_duration 
FROM students s
JOIN assignment_submissions a ON a.student_id = s.id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_assignment_duration DESC;


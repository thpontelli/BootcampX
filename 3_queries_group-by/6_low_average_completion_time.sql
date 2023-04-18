SELECT * FROM cohorts;
SELECT * FROM assignment_submissions;
SELECT * FROM students;
SELECT * FROM assignments;

SELECT 
	s.name as student, 
	AVG(a.duration) as average_assignment_duration,
	AVG(a2.duration) as average_estimated_duration
FROM students s
JOIN assignment_submissions a ON a.student_id = s.id
JOIN assignments a2 ON a.assignment_id = a2.id
WHERE s.end_date IS NULL 
GROUP BY s.name
HAVING AVG(a.duration) < AVG(a2.duration)
ORDER BY average_assignment_duration;


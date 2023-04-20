SELECT * FROM assistance_requests;
SELECT * FROM assignments;
SELECT * FROM teachers;
SELECT * FROM students;

SELECT 
	a.id, 
	a.name, 
	a.day, 
	a.chapter,
	COUNT(ar.assignment_id) as total_requests
FROM assistance_requests ar
JOIN assignments a ON ar.assignment_id = a.id
GROUP BY a.id
ORDER BY total_requests DESC;

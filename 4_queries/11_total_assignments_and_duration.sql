SELECT * FROM assistance_requests;
SELECT * FROM assignments;
SELECT * FROM teachers;
SELECT * FROM students;

SELECT 
	day,
	count(*) AS number_of_assignments,
	sum(duration) AS duration
FROM assignments
GROUP BY day
ORDER by day;

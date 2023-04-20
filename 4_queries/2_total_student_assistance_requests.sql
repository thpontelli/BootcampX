SELECT * FROM assistance_requests;
SELECT * FROM teachers;

	SELECT 
		count(a.*) as total_assistances,
		s.name
	FROM assistance_requests a
	JOIN students s ON s.id = a.student_id
	WHERE s.name = 'Elliot Dickinson'
	GROUP BY s.name;



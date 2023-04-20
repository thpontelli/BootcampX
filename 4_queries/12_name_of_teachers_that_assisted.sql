SELECT * FROM teachers;
SELECT * FROM cohorts;
SELECT * FROM assistance_requests;
SELECT * FROM students;
SELECT * FROM assignments;



SELECT DISTINCT(t.name) as teacher, c.name as cohort
FROM students s
JOIN assistance_requests ar ON ar.student_id = s.id
JOIN cohorts c ON c.id = s.cohort_id
JOIN teachers t ON t.id = ar.teacher_id
WHERE c.name = 'JUL02'
ORDER BY t.name;
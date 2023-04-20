SELECT t.name as teacher, c.name as cohort, COUNT(*) as total_assistances
FROM students s
JOIN assistance_requests ar ON ar.student_id = s.id
JOIN cohorts c ON c.id = s.cohort_id
JOIN teachers t ON t.id = ar.teacher_id
WHERE c.name = 'JUL02'
GROUP BY t.name, c.name
ORDER BY t.name;
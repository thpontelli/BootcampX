SELECT SUM(a.duration) as total_duration
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assignment_submissions a ON a.student_id = s.id
WHERE c.name = 'FEB12';


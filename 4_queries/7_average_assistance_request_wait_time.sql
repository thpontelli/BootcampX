SELECT * FROM assistance_requests;
SELECT * FROM teachers;
SELECT * FROM students;

SELECT 
AVG(started_at - created_at) as average_wait_time
FROM assistance_requests;

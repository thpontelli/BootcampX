const { Pool } = require('pg');

const pool = new Pool({
  user: 'thiagopontelli',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const commandLineArgs = process.argv.splice(2);

const queryString = `
SELECT DISTINCT(t.name) as teacher, c.name as cohort
FROM students s
JOIN assistance_requests ar ON ar.student_id = s.id
JOIN cohorts c ON c.id = s.cohort_id
JOIN teachers t ON t.id = ar.teacher_id
WHERE c.name = $1
ORDER BY t.name;
`
const cohortName = commandLineArgs[0];

// Store all potentially malicious values in an array.
const values = [`${cohortName}`];

pool.query(queryString, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
});
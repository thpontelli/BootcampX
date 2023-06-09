const { Pool } = require('pg');

const pool = new Pool({
  user: 'thiagopontelli',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const commandLineArgs = process.argv.splice(2);

const queryString = `
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2;
`
const cohortName = commandLineArgs[0];
const limit = commandLineArgs[1] || 5;

// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`, limit];


pool.query(queryString, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
});
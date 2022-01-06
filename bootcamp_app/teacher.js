const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: 'vagrant',
  host: 'localhost',
  database: 'bootcampx'
});
const cohortNameInput = process.argv[2] 

const neededQuery = `SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${cohortNameInput}%'
ORDER BY teacher;`

pool.query(neededQuery)
.then(result => result.rows.forEach(teacher => {
  console.log(`${teacher.cohort}: ${teacher.teacher}`)
}))
.catch(err => console.error('query error', err.stack));
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: 'vagrant',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2]; 
const limit = process.argv[3];

const selectQuery = `SELECT students.id as student_id, students.name as name, cohorts.name as cohort FROM students JOIN cohorts ON cohorts.id = cohort_id 
WHERE cohorts.name LIKE '%${cohort}%' LIMIT ${limit || 4}`;

pool.query(selectQuery)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort. \n`);
  })
})
.catch(err => console.error(err.stack));
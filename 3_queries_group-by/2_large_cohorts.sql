/* Get all cohorts with 18 or more students. */
SELECT cohorts.name AS cohort_name , count(students.name) AS student_count
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING count(students.name) >= 18
ORDER BY student_count;
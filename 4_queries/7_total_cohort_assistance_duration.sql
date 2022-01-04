/* Get the total duration of all assistance requests for each cohort. 
Select the cohort's name and the total duration the assistance requests.
Order by total_duration.
Look at the ERD to see how to join the tables.*/

SELECT cohorts.name as cohort, sum(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;
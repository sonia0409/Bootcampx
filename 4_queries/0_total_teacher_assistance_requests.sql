/* Get the total number of assistance_requests for a teacher.
Select the teacher's name and the total assistance requests.
Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here. */

SELECT count(assistance_requests.*) AS total_assistances, teachers.name  
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;
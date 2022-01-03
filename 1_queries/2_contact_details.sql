/* We need to make sure that we can contact students through a phone number or through email. If student's don't have a phone number or email associated with their account, we'll need to message them on slack to update their details.
*/
SELECT name, id, cohort_id
FROM students
WHERE email IS NULL  
OR phone IS NULL;
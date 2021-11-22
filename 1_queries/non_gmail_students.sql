-- Get all of the students without a gmail.com account and a phone number.
SELECT name, email, id, cohort_id
FROM students
WHERE phone IS NULL 
AND email NOT LIKE '%gmail.com';
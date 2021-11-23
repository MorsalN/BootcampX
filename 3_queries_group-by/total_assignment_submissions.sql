-- Get the total number of assignment submissions for each cohort.
SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohort
ORDER BY COUNT(assignment_submissions.*) DESC;
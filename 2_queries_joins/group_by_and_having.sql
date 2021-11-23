-- If we want to calculate the total number of assignment_submissions for all students, the count aggregate function is perfect.
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;

-- Now that we know how to get the total submissions for currently enrolled students, let's refine the query a bit more. Let's only return currently enrolled students who's total submissions are less than 100;
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;

-- GROUP BY allows us to combine the results based on a column so an aggregate can be applied to each group.

-- HAVING allows us to filter our results based on the result of an aggregate function.
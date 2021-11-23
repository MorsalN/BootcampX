-- The same query as before (assignments_per_day.sql), but only return rows where total assignments is greater than or equal to 10.
SELECT day, COUNT(*) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;
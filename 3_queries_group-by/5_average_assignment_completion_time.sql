SELECT students.name as student, avg(assignment_submissions.duration) as avg_assignment_duration
FROM assignment_submissions
JOIN students ON student_id = students.id
WHERE end_date is null
GROUP BY student
ORDER BY avg_assignment_duration DESC;
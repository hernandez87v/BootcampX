SELECT cohorts.name as "name", AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_time
FROM students
    JOIN assistance_requests ON students.id = assistance_requests.student_id
    JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;
-- SELECT COUNT(assignment_submissions.duration) 
-- as total_duration
-- FROM students
--     LEFT JOIN assignment_submissions
--     ON assignment_submissions.duration = duration
-- WHERE students.name = 'Ibrahim Schimmel';

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
    JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';
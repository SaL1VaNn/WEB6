SELECT students.student_id, students.name, AVG(grades.grade) AS average_grade
FROM students
JOIN grades ON students.student_id = grades.student_id
GROUP BY students.student_id, students.name
ORDER BY average_grade DESC
LIMIT 5;

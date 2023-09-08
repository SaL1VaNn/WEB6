SELECT students.student_id, students.name, subjects.name AS subject, AVG(grades.grade) AS average_grade
FROM students
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
WHERE subjects.name = 'Назва певного предмета'
GROUP BY students.student_id, students.name, subjects.name
ORDER BY average_grade DESC
LIMIT 1;

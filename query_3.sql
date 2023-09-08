SELECT groups.name AS group_name, subjects.name AS subject, AVG(grades.grade) AS average_grade
FROM groups
JOIN students ON groups.group_id = students.group_id
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
WHERE subjects.name = 'Назва певного предмета'
GROUP BY groups.name, subjects.name
ORDER BY average_grade DESC;

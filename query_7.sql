SELECT students.name, subjects.name AS subject, grades.grade
FROM students
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
JOIN groups ON students.group_id = groups.group_id
WHERE groups.name = 'Назва певної групи' AND subjects.name = 'Назва певного предмета';

SELECT students.name, subjects.name AS subject
FROM students
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
WHERE students.name = 'ПІБ студента';

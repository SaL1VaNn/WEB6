SELECT students.name AS student, subjects.name AS subject, teachers.name AS teacher
FROM students
JOIN grades ON students.student_id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.subject_id
JOIN teachers ON subjects.teacher_id = teachers.teacher_id
WHERE students.name = 'ПІБ студента' AND teachers.name = 'ПІБ викладача';

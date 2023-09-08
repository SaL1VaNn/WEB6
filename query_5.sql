SELECT teachers.name AS teacher, subjects.name AS subject
FROM teachers
JOIN subjects ON teachers.teacher_id = subjects.teacher_id
WHERE teachers.name = 'ПІБ викладача';

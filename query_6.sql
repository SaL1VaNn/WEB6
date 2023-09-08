SELECT students.name, groups.name AS group_name
FROM students
JOIN groups ON students.group_id = groups.group_id
WHERE groups.name = 'Назва певної групи';

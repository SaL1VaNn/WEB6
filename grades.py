import sqlite3
import random

conn = sqlite3.connect('university.db')
cursor = conn.cursor()

# Заповнення таблиці grades
student_ids = list(range(1, 51))  # Припустимо, що у вас є 50 студентів
subject_ids = list(range(1, 9))  # Припустимо, що у вас є 8 предметів

for student_id in student_ids:
    for subject_id in subject_ids:
        grade = random.randint(1, 100)
        date = '2023-09-07'  # Припустимо, що всі оцінки з одного дня
        cursor.execute('INSERT INTO grades (student_id, subject_id, grade, date) VALUES (?, ?, ?, ?)', (student_id, subject_id, grade, date))

conn.commit()
conn.close()

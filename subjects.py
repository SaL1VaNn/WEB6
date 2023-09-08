from faker import Faker
import sqlite3
import random

fake = Faker()
conn = sqlite3.connect('university.db')
cursor = conn.cursor()

teacher_ids = list(range(1, 6))  # Припустимо, що у вас є 5 викладачів
# Заповнення таблиці subjects
for _ in range(8):
    name = fake.word()
    teacher_id = random.choice(teacher_ids)
    cursor.execute('INSERT INTO subjects (name, teacher_id) VALUES (?, ?)', (name, teacher_id))

conn.commit()
conn.close()

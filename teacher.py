from faker import Faker
import sqlite3

fake = Faker()
conn = sqlite3.connect('university.db')
cursor = conn.cursor()

# Заповнення таблиці teachers
for _ in range(5):
    name = fake.name()
    cursor.execute('INSERT INTO teachers (name) VALUES (?)', (name,))

conn.commit()
conn.close()

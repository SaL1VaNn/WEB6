from faker import Faker
import sqlite3

fake = Faker()
conn = sqlite3.connect('university.db')
cursor = conn.cursor()

# Заповнення таблиці groups
group_names = ['Group A', 'Group B', 'Group C']
for group_id, name in enumerate(group_names, start=1):
    cursor.execute('INSERT INTO groups (group_id, name) VALUES (?, ?)', (group_id, name))

conn.commit()
conn.close()

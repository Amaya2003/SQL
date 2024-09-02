In MySQL Workbench, I efficiently managed the college database using various SQL operations. I started by creating the database with CREATE DATABASE college; and switched to it with USE college;. I then set up the student table with columns for id, name, marks, grade, and city, populating it with initial data using INSERT INTO.

For querying, I used SELECT statements to view data, including SELECT name, id FROM student; for specific columns and SELECT * FROM student; for full records. Filtering was achieved with WHERE clauses, such as SELECT * FROM student WHERE marks > 80; to find high scorers and SELECT * FROM student WHERE city = "Pune"; for city-specific data. I also applied complex conditions like SELECT * FROM student WHERE marks + 10 > 100 AND id % 10 = id;.

Sorting was managed with ORDER BY, and I used LIMIT 3 to restrict results. Aggregate functions like MAX(marks), MIN(marks), and AVG(marks) helped analyze data, while COUNT(name) provided the number of students. Grouping was performed with GROUP BY city to count students per city and HAVING to filter groups based on criteria.

I updated records with UPDATE statements to modify grades and marks, such as UPDATE student SET grade = "O" WHERE grade = "A";. I managed table modifications by adding and removing columns, renaming the table from student to students, and changing column attributes.

In relational data management, I created courses and teacher tables with foreign keys, using cascading options. Joins (INNER JOIN, LEFT JOIN, RIGHT JOIN) and UNION were employed to combine and analyze data across tables.

These operations demonstrated a thorough approach to database management and data analysis in MySQL Workbench.

CREATE DATABASE college;
USE college;

CREATE TABLE student(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
);

INSERT INTO student
(id,name,marks,grade,city)
VALUES
(1,"Amaya",100,"A","Pune"),
(2,"kshitij",90,"A","Pune"),
(3,"Rohit",91,"A","Pune"),
(4,"Vedanti",89,"A","Pune");

SELECT name,id FROM student;
SELECT * FROM student;
SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE city = "Pune";
SELECT * FROM student WHERE marks > 80 AND city = "Pune";
SELECT * 
FROM student
WHERE marks + 10 > 100 AND id % 10 = id;
SELECT * 
FROM student
WHERE id % 10 = 2 OR marks > 80;
SELECT * 
FROM student
order by marks ASC; 

SELECT * 
FROM student
order by marks DESC
LIMIT 3; 

SELECT MAX(marks) 
FROM student;

SELECT MIN(marks) 
FROM student;

SELECT AVG(marks) 
FROM student;

SELECT COUNT(name) 
FROM student;

SELECT city, COUNT(name) 
FROM student
GROUP BY city;

SELECT city,name, COUNT(id) 
FROM student
GROUP BY city,name;

SELECT city, count(id)
FROM student
GROUP BY city
HAVING max(marks)>80;

SELECT city, count(id)
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING max(marks)>=90
ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A";

SET SQL_SAFE_UPDATES = 1;


UPDATE student
SET marks = 99
WHERE id = 1;

SELECT * FROM student;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student;

UPDATE student
SET marks = marks + 1;

SELECT * FROM student;

DELETE FROM student
WHERE marks <= 90;

SELECT * FROM student;

CREATE TABLE courses(
 id INT PRIMARY KEY,
 name VARCHAR(50)
);

CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES courses(id)
);

DROP TABLE teacher;

CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY(dept_id) REFERENCES courses(id)
 ON UPDATE CASCADE 
 ON DELETE CASCADE
);

INSERT INTO courses
(id,name)
VALUES
(101,"Science"),
(102,"Maths"),
(103,"English");

INSERT INTO teacher
(id,name,dept_id)
VALUES
(1,"Bob",101),
(2,"Amy",102),
(3,"Bac",102);

SELECT * FROM teacher;

UPDATE teacher 
SET dept_id = 103
WHERE id = 3;

SELECT * FROM teacher;

UPDATE courses 
SET id = 104
WHERE id = 102;

SELECT * FROM teacher;

select * from student;

ALTER TABLE student
ADD COLUMN age INT;

select * from student;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
RENAME TO students;

ALTER TABLE students
CHANGE COLUMN id rollno INT;

select * from students;

ALTER TABLE students
MODIFY name VARCHAR(100);

DELETE FROM students
WHERE marks < 80;

TRUNCATE students;

ALTER TABLE students
DROP column marks;

ALTER TABLE students
DROP column grade;

ALTER TABLE students
DROP column city;

INSERT INTO students
(rollno,name)
VALUES
(101,"Amaya"),
(102,"kshitij"),
(103,"Rohit"),
(104,"Vedanti");

SELECT *
FROM students
INNER JOIN courses
ON students.rollno=courses.id;

SELECT *
FROM students
LEFT JOIN courses
ON students.rollno=courses.id;

SELECT *
FROM students
RIGHT JOIN courses
ON students.rollno=courses.id;

SELECT *
FROM students
LEFT JOIN courses
ON students.rollno=courses.id
UNION
SELECT *
FROM students
RIGHT JOIN courses
ON students.rollno=courses.id;

SELECT *
FROM students
LEFT JOIN courses
ON students.rollno=courses.id
WHERE courses.id IS NULL;

SELECT *
FROM students
RIGHT JOIN courses
ON students.rollno=courses.id
WHERE students.rollno IS NULL;

SELECT *
FROM students
LEFT JOIN courses
ON students.rollno=courses.id
WHERE courses.id IS NULL
UNION
SELECT *
FROM students
RIGHT JOIN courses
ON students.rollno=courses.id
WHERE students.rollno IS NULL;




create database student;
use student;
CREATE TABLE teachers(teacher_id INT PRIMARY KEY, teacher_name VARCHAR(30),department VARCHAR(20));
CREATE TABLE Subjects (subject_id INT PRIMARY KEY,subject_name VARCHAR(20),teacher_id INT,FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id));
CREATE TABLE CLASSES (class_id INT PRIMARY KEY, class_name VARCHAR(30), teacher_id INT,FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id));
CREATE TABLE students (student_id INT PRIMARY KEY,first_name VARCHAR(20),last_name VARCHAR(25),class_id int ,FOREIGN KEY (class_id) REFERENCES classes(class_id),admission_year INT);
CREATE TABLE Marks(mark_id INT PRIMARY KEY, student_id INT ,FOREIGN KEY (student_id) REFERENCES students(student_id),subject_id INT,FOREIGN KEY (subject_id) REFERENCES SUBJECTS(subject_id), marks_scored INT);

INSERT INTO teachers (teacher_id, teacher_name, department)
VALUES
(101, 'Arti vishwase', 'Mathematics'),
(102, 'pooja sant', 'Science'),
(103, 'renuka Kulkarni', 'English'),
(104, 'Vaishali Pawar', 'Computer'),
(105, 'soham Jadhav', 'History'),
(106, 'anjali Bhosale', 'Geography'),
(107, 'vidya Shinde', 'Biology'),
(108, 'Nitin patil', 'Physics'),
(109, 'Sonia shetty', 'Chemistry');

INSERT INTO Subjects (subject_id, subject_name)
VALUES
(1, 'Maths'),
(2, 'Science'),
(3, 'English'),
(4, 'Computer'),
(5, 'History'),
(6, 'Geography'),
(7, 'Biology'),
(8, 'Physics'),
(9, 'Chemistry');

INSERT INTO classes (class_id, class_name,teacher_id)
VALUES
(11, 'TYBA',101),
(21, 'SYBSC',102),
(31, 'SYBA',103),
(41, 'TYBSC',104),
(51, 'TYBCOM',105),
(61, 'FYBSC',106),
(71, 'FYBA',107),
(81, 'TYBA',108),
(91, 'SYBA',109);


INSERT INTO students(student_id, first_name, last_name,CLASS_ID, admission_year)
VALUES (201, 'Rani', 'shinde',11, 2022),
       (202, 'Priya', 'wamane',21, 2023),
       (203, 'dipali', 'karande',31, 2021),
       (204, 'Neha', 'nigade',41, 2022),
       (205, 'ashwini', 'saundore',51, 2021),
       (206, 'vaishnavi', 'pund',61, 2023),
       (207, 'nikita', 'kharate',71, 2024),
       (208, 'harshita', 'khairnar',81,2020);

INSERT INTO Marks (mark_id, student_id, subject_id, marks_scored)
VALUES
(301, 201, 1, 88),
(302, 202, 2, 75),
(303, 203, 3, 82),
(304, 204, 4, 91),
(305, 205, 5, 69),
(306, 206, 6, 85),
(307, 207, 7, 73),
(308, 208, 8, 90);

SELECT * FROM STUDENTS;
SELECT * FROM MARKS;

# Que  1. Display all students (first_name, last_name) with their class_name.
SELECT * FROM students 
INNER JOIN classes  
ON students.class_id = classes.class_id;

 # 2. Show each class_name along with the teacher_name of its class_teacher.
SELECT *
FROM classes 
INNER JOIN teachers 
ON classes.teacher_id = teachers.teacher_id;

alter table teachers drop column teacher_id;
 
 #3. List all subjects with the teacher_name who teaches each subject.
 SELECT *
FROM Subjects 
INNER JOIN teachers 
ON Subjects.teacher_id = teachers.teacher_id;

 
 
 #4. Display student_name and marks_scored for each subject_name.
 SELECT *FROM Marks 
INNER JOIN students
    ON MARKS.STUDENT_ID = STUDENTS.STUDENT_ID;

 
 #5. Show all students who scored more than 75 marks_scored in any subject.
 SELECT * FROM STUDENTS
INNER JOIN MARKS
ON STUDENTS.STUDENT_ID = MARKS.STUDENT_ID
WHERE MARKS_SCORED > 75;

#6. List students who do not have any marks recorded (no entry in Marks table).
SELECT first_name
FROM Students 
LEFT JOIN Marks 
ON students.student_id = marks.student_id
WHERE mark_id IS NULL;

#Q7. Show subjects that have no marks recorded in the Marks table.
SELECT subject_name
FROM Subjects 
LEFT JOIN Marks 
 ON subjects.subject_id = marks.subject_id
WHERE mark_id IS NULL;

#Q8. Display student_name, class_name, and subject_name together with marks_scored.
select 
    s.first_name,
    s.last_name,
    c.class_name,
    u.subject_name,
    m.marks_scored
from students s
INNER JOIN classes c
ON s.class_id = c.class_id
INNER JOIN marks m
ON s.student_id = m.student_id
INNER JOIN subjects u
ON m.subject_id = u.subject_id;

#Q9. Show total number of students in each class_name.
SELECT class_name, COUNT(student_id)
FROM Classes 
LEFT JOIN Students
ON classes.class_id = students.class_id
GROUP BY class_name;


#Q10. Display teacher_name along with the count of subjects they teach.
SELECT teacher_name, COUNT(subject_id)
FROM Teachers 
LEFT JOIN Subjects 
 ON teachers.teacher_id = subjects.teacher_id
GROUP BY teacher_name;


#Q11. Display all students along with every subject, showing marks_scored as NULL if not attempted.
select s.first_name,
s.last_name,
m.marks_scored
from students s
left join marks m
on s.student_id = m.student_id
inner join subjects u
on m.subject_id = u.subject_id;

select *from marks;
insert into marks values(310,205,4,null);

#Q12. Show the top scoring student (marks_scored) for each subject_name.
select s.first_name,
       s.last_name,
       u.subject_name,
       m.marks_scored
from students s
left join marks m
on s.student_id = m.student_id
left join subjects u
on m.subject_id = u.subject_id
order by marks_scored desc;


#Q13. Display class_name and average marks_scored of its students.
SELECT
    c.class_name,
    AVG(m.marks_scored) AS avg_marks
FROM students s
 INNER JOIN classes c
    ON s.class_id = c.class_id
INNER JOIN marks m
    ON s.student_id = m.student_id
GROUP BY c.class_name;


#Q14. List subjects taught by teachers who are also class teachers (class_teacher_id).
select *from teachers;
select subject_name,teacher_name
from teachers
inner join subjects
on teachers.teacher_id = subjects.teacher_id
inner join classes
on teachers.teacher_id = classes.teacher_id;

select *from subjects;
select u.subject_name,
	   t.teacher_name
from teachers t
inner join marks m
on u.teacher_id = m.teacher_id
inner join subjects u
on m.subject_id = u.subject_id;


#Q15. Display students who scored less than 40 marks_scored along with subject_name
SELECT *from Marks 
INNER JOIN Students 
 ON marks.student_id = students.student_id
WHERE marks.marks_scored < 40;

#Q16. Show total marks_scored by each student across all subjects.
SELECT first_name, last_name, SUM(marks_scored)
FROM Students
inner join Marks
 ON Students.student_id = marks.student_id
GROUP BY first_name, last_name;

#Q17. Display the class_name with the highest overall average marks_scored.
select c.class_name,
       avg(m.marks_scored)
from students s
inner join classes c
on s.class_id = c.class_id
inner join marks m
on s.student_id = m.student_id
group by c.class_name;

#Q18. List teachers who teach subjects but are not class teachers.
SELECT t.teacher_id,
       t.teacher_name
FROM teachers t
LEFT JOIN subjects s
       ON t.teacher_id = s.teacher_id
LEFT JOIN classes c
       ON t.teacher_id = c.class_teacher_id
WHERE c.class_teacher_id IS NULL;

ALTER TABLE classes
ADD class_teacher_id INT;

select *from classes

#Q19. Show the student who scored the highest marks_scored in the entire school.
select s.first_name,
s.last_name,
m.marks_scored
from students s
left join marks m
on s.student_id = m.student_id
order by marks_scored desc
limit 1;


#Q20. Display subjects where all students in the school have marks recorded.
select u.subject_name,
       m.marks_scored,
       count(m.student_id)
from subjects u
inner join marks m
on u.subject_id = m.subject_id
group by u.subject_name,m.marks_scored;

###ASS -2

#Q1. Display student first_name and last_name along with their class_name.
select s.first_name,
       s.last_name,
       c.class_name
from students s
inner join classes c
on s.class_id = c.class_id;

#Q2. Show subject_name along with the teacher_name who teaches that subject.
select u.subject_name,
       t.teacher_name
from teachers t
inner join subjects u
on t.teacher_id = u.teacher_id;


#Q3. Display student first_name, last_name along with marks_scored.
select s.first_name,
       s.last_name,
       m.marks_scored
from students s
inner join marks m
on s.student_id = m.student_id;

#Q4. List subject_name along with marks_scored.
select u.subject_name,
       m.marks_scored
from subjects u
inner join marks m
on u.subject_id = m.subject_id;

#Q5. Display class_name along with the teacher_name of the class_teacher.
SELECT c.class_name, t.teacher_name
FROM classes c
INNER JOIN teachers t
ON c.teacher_id= t.teacher_id;


#Q6. Show student first_name, last_name along with subject_name.
select s.first_name, 
       s.last_name,
       u.subject_name
from marks m
inner join students s
on m.student_id = s.student_id
inner join subjects u
on m.subject_id = u.subject_id;

#Q7. Display the subject_name and teacher_name for all subjects handled by each teacher.
select u.subject_name,
       t.teacher_name
from teachers t
inner join subjects u
on t.teacher_id = u.teacher_id;

#Q8. Show class_name and the number of students in that class.
select c.class_name,
       count(student_id)
from students s
inner join classes c
on s.class_id = c.class_id
group by c.class_name;

#Q9. List student first_name, last_name along with the subject_id they have marks recorded for.
select s.first_name,
       s.last_name,
       u.subject_id
from marks m
inner join students s
on m.student_id = s.student_id
inner join subjects u
on m.subject_id = u.subject_id;

#Q10. Display subject_name and marks_scored for each student who attempted that subject.
SELECT 
    u.subject_name,
    m.marks_scored,
    s.first_name,
    s.last_name
FROM Marks m
JOIN Subjects u 
    ON m.subject_id = u.subject_id
JOIN Students s
    ON m.student_id = s.student_id;



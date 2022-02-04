CREATE TABLE student(
id int PRIMARY KEY,
name varchar(20),
age int
);

ALTER TABLE student
Add email varchar(50);

INSERT into student values(1,'Hrutvik',22,'hrutvik@vmail.com');
INSERT into student values(2,'Dipen',23,NULL);
INSERT into student values(3,'Henil',22,'henil@gmail.com');
INSERT into student values(4,'Darpal',25,'darpal@vmail.com');

select * from student;

select * from student
ORDER BY age;

SELECT DISTINCT age FROM student;

SELECT * FROM student
WHERE age=22;

SELECT * FROM student
WHERE age=22 AND name='Hrutvik';

SELECT * FROM student
WHERE name LIKE 'H%';
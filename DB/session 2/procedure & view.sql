CREATE PROCEDURE spstudents
AS
BEGIN
SELECT * FROM students
END;

EXEC spstudents

ALTER PROCEDURE spstudents
AS
BEGIN
SELECT * FROM students ORDER BY s_name
END;

EXEC spstudents

CREATE PROCEDURE studentss (@age varchar(30))
AS
BEGIN
SELECT * FROM student WHERE age = @age
END;

EXEC studentss @age=22

select * from student ;


ALTER PROCEDURE studentss(@age int,@acount int output)
AS
BEGIN
select name,email from student
select @acount=@@ROWCOUNT
END
DECLARE @count int
EXEC studentss @age = 22,@acount =@count output
select @count AS ' Number of student'

CREATE VIEW stud AS
SELECT name, email
FROM student
WHERE age = 22;

select * from stud;




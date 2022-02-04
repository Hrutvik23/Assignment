
BEGIN TRANSACTION

insert into students values(9,'Samir')
ROLLBACK TRANSACTION
select * from students

BEGIN TRANSACTION

insert into students values(9,'Jay')
insert into students values(10,'Raj')
select * from students
COMMIT TRANSACTION
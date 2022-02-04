create table students(s_id int primary key, 
                      s_name varchar(20));

insert into students values(1, 'Henil');
insert into students values(2, 'Hrutvik');
insert into students values(3, 'Dipen');
insert into students values(4, 'Darpal');
insert into students values(5, 'Atish');
insert into students values(6, 'Utsav');
insert into students values(7, 'Austin');
insert into students values(8, 'Meet');

create table marks(school_id int primary key, 
					s_id int, 
                    score int,
					status varchar(20));

insert into marks values(1004, 1, 23, 'fail');
insert into marks values(1008, 6, 95, 'pass');
insert into marks values(1012, 2, 97, 'pass');
insert into marks values(1016, 7, 67, 'pass'); 
insert into marks values(1020, 3, 100, 'pass');
insert into marks values(1025, 8, 73, 'pass');
insert into marks values(1030, 4, 88, 'pass');
insert into marks values(1035, 9,  13, 'fail');
insert into marks values(1040, 5,  16, 'fail');
insert into marks values(1050, 10, 53, 'pass');

create table details(address_city varchar(20), email_ID varchar(20), 
                      school_id int);

insert into details values('Gandhinagar',  'Dipen@gmail.com',1020);
insert into details values('Degham', 'Darpal@gmail.com',1030);
insert into details values('Ahmedabad','hrutvik@gmail.com',1012);
insert into details values('valsad','om@gmail.com',1111);
insert into details values('Uvarsad',' Utsav@gmail.com',1008);
insert into details values('Aanad','ravi@gmail.com',1099);
insert into details values('Ahmedabad', 'Jayesh@geeks.com', 1006);
insert into details values('Jaipur','kumar@geeks.com',1087);


select s_name, score, status, address_city, email_id
from students s inner join marks m on
s.s_id = m.s_id inner join details d on 
d.school_id = m.school_id;

select s_name, score, status, address_city, email_id
from students s inner join marks m on
s.s_id = m.s_id inner join details d on 
d.school_id = m.school_id;

select s_name, score, status, address_city, email_id
from students s left join marks m on
s.s_id = m.s_id left join details d on 
d.school_id = m.school_id;

select s_name, score, status, address_city, email_id
from students s right join marks m on
s.s_id = m.s_id right join details d on 
d.school_id = m.school_id;

select s_name, score, status, address_city, email_id
from students s left join marks m on
s.s_id = m.s_id right join details d on 
d.school_id = m.school_id;

select s_name, score, status, address_city, email_id
from students s full join marks m on
s.s_id = m.s_id full join details d on 
d.school_id = m.school_id;


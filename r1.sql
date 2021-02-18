create table students (ST_ID integer, ST_NAME varchar(15), ST_LAST varchar(15));
		insert into students (ST_ID , ST_NAME , ST_LAST)  values (1, 'Konul', 'Gurbanova');
		insert into students (ST_ID , ST_NAME , ST_LAST) values (2, 'Shahnur', 'Isgandarli');
		insert into students (ST_ID , ST_NAME , ST_LAST) values (3, 'Natavan', 'Mammadova');
		select * from students;
		alter table students
add column STUDENT_ID int
update students 
set STUDENT_ID=ST_ID;
alter table students
drop column ST_ID
	alter table students
	alter column ST_NAME type character varying(30);
	alter table students
	alter column ST_LAST type character varying(30);


		alter table students
add column ST_ID int
update students 
set ST_ID=STUDENT_ID;
alter table students
drop column STUDENT_ID
    alter table students
	alter column ST_NAME type character varying(15);
	alter table students
	alter column ST_LAST type character varying(15);

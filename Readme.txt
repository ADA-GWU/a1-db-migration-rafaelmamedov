In this document I will explain my codes as well as how to run these codes.
1)
To begin with,  the first file which is named as m1
is migration for table STUDENTS.

create table students (ST_ID integer, ST_NAME varchar(15), ST_LAST varchar(15));------- I created table
		insert into students (ST_ID , ST_NAME , ST_LAST)  values (1, 'Konul', 'Gurbanova');------- inserted rows to table
		insert into students (ST_ID , ST_NAME , ST_LAST) values (2, 'Shahnur', 'Isgandarli');
		insert into students (ST_ID , ST_NAME , ST_LAST) values (3, 'Natavan', 'Mammadova');
		select * from students;
		alter table students
add column STUDENT_ID int---------- I added new column As we needed to change name of the ST_ID to STUDENT_ID *
update students 
set STUDENT_ID=ST_ID;------------ Here I transfered existing information in ST_ID to STUDENT_ID
alter table students
drop column ST_ID---------- I droped the column which was existed before and now there is no need for it
	alter table students
	alter column ST_NAME type character varying(30);------- I changed length of the ST_NAME and ST_LAST  which was another task *
	alter table students
	alter column ST_LAST type character varying(30);

2)
Secondly, there is a file which is called m2 and it is for migration of table INTERESTS


create table INTERESTS (STUDENT_ID integer, INTEREST varchar(15));----------------- I created table for INTERESTS
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (1, 'Tennis');-------- I inserted rows to table
		insert into INTERESTS (STUDENT_ID , INTEREST) values (1, 'Literature');
	    insert into INTERESTS (STUDENT_ID , INTEREST)  values (1, 'Math');
		insert into INTERESTS (STUDENT_ID , INTEREST) values (2, 'Tennis');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (3, 'Math');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (3, 'Music');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (2, 'Football');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (1, 'Chemistry');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (3, 'Chess');
		select * from INTERESTS;
			 alter table INTERESTS
add column interests  character varying ARRAY--------- I added new column INTERESTS as we had to change name of the INTEREST to INTERESTS also changed data type to ARRAY *
insert into interests (STUDENT_ID , INTERESTS)  values ('1',
    '{{"Tennis"}, { "Literature"}, {"Math"}, { "Chemistry"} }');----------- I inserted information for column INTERESTS 
	insert into interests (STUDENT_ID , INTERESTS)  values ('2',
    '{{"Tennis"}, { "Football"}}');
	insert into interests (STUDENT_ID , INTERESTS)  values ('3',
    '{{"Math"}, { "Music"}, {"Chess"}}');
	alter table interests
drop column INTEREST-----------  I droped column INTEREST as we do not need it 
 
3)
Third file r1 is about rollback for table STUDENTS

Rollback is for after running code all tables and data must remain as they
were.


I copy pasted code in file m1 that were for table STUDENTS and added this code for rollback 

		alter table students
add column ST_ID int---------- I added this column As we had  ST_ID column before 
update students 
set ST_ID=STUDENT_ID;--------- I transfered all information on STUDENT_ID to ST_ID
alter table students
drop column STUDENT_ID-------- Then I droped column STUDENT_ID which was not existed before
    alter table students
	alter column ST_NAME type character varying(15);------- I changed legth of ST_NAME and ST_LAST to 15 again
	alter table students
	alter column ST_LAST type character varying(15);

4)

Fourth file r2 is about rollback in m2 which was table for INTERESTS

I copy pasted code in file m2 that were for table INTERESTS and added this code for rollback 

	
					 alter table INTERESTS
add column INTEREST  character varying (15)-------------------  I added INTEREST column which existed before
insert into INTERESTS (STUDENT_ID , INTEREST)  values (1, 'Tennis');----------------------- I inserted all the data that INTEREST column had
		insert into INTERESTS (STUDENT_ID , INTEREST) values (1, 'Literature');
	    insert into INTERESTS (STUDENT_ID , INTEREST)  values (1, 'Math');
		insert into INTERESTS (STUDENT_ID , INTEREST) values (2, 'Tennis');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (3, 'Math');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (3, 'Music');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (2, 'Football');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (1, 'Chemistry');
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (3, 'Chess');
		
		
		alter table interests
drop column INTERESTS--------------- I droped this column because it is not needed


		





















		


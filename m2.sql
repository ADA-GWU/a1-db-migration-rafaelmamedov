create table INTERESTS (STUDENT_ID integer, INTEREST varchar(15));
		insert into INTERESTS (STUDENT_ID , INTEREST)  values (1, 'Tennis');
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
add column interests  character varying ARRAY
insert into interests (STUDENT_ID , INTERESTS)  values ('1',
    '{{"Tennis"}, { "Literature"}, {"Math"}, { "Chemistry"} }');
	insert into interests (STUDENT_ID , INTERESTS)  values ('2',
    '{{"Tennis"}, { "Football"}}');
	insert into interests (STUDENT_ID , INTERESTS)  values ('3',
    '{{"Math"}, { "Music"}, {"Chess"}}');
	alter table interests
drop column INTEREST
		
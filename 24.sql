use db;
create table department
 (dept_name varchar(8),
 bulding VARCHAR(8),
 budget DECIMAL(9,0),
 primary key(dept_name)
 );
 desc course;
 
 create table course
 (course_id varchar(20),
 title varchar(20),
 dept_name varchar(20),
 credits numeric(2,0),
 primary key(course_id),
 foreign key(dept_name) references department(dept_name)
 );
 
 create table instructor
 (Id varchar(20),
 in_name varchar (29),
 salary decimal(20),
 dept_name varchar(20),
 primary key(Id),
 foreign key(dept_name)references department(dept_name)
 );
 desc instructor;
 create table section
 (course_id varchar(20),
 sec_id varchar(20),
 semester varchar(6),
 year numeric(6,0),
 building varchar(20),
 room_no varchar (20),
 Time_slot varchar(30),
 primary key(course_id,sec_id,year,semester),
 foreign key(course_id)references course(course_id)
 );
 desc section;
 
create table teaches
(Id varchar(20),
sec_id varchar(20),
course_id varchar(30),
semester varchar(30),
year numeric(6,0),
primary key(Id,sec_id,course_id,semester,year),
foreign key(sec_id,course_id,semester,year)references section(sec_id,course_id,semester,year),
foreign key(Id)references instructor(Id)
);
desc teaches;

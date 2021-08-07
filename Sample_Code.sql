create table subject_info(
serial_number int,
name varchar(50),
subject_code int,
primary key(subject_code)
);

create table teacher_info(
serial_number int,
name varchar(20),
experience int,
teacher_id int,
primary key(serial_number)
);

create table student_info(
serial_number int,
name varchar(20),
student_id int,
city varchar(20),
primary key(serial_number)
);

create table teacher(
serial_number int,
name varchar(20),
subject varchar(50),
teacher_id int,
primary key(serial_number)
);

create table student(
serial_number int,
name varchar(20),
student_id int,
major varchar(50),
teacher_id_appointed int,
primary key(serial_number),
foreign key (teacher_id_appointed) references teacher(teacher_id) on delete set null,
foreign key (major) references subject_info(subject_code) on delete set null,
foreign key (student_id) references student_info(student_id) on delete set null,
foreign key (teacher_id_appointed) references teacher(teacher_id) on delete set null
);

insert into subject_info values(1,'Defense against the Dark Arts',172);
insert into teacher_info values(1,'Severus Snape',10,8);
insert into student_info values(1,'Harry Potter',23456,'Sussex');
insert into teacher values(1,'Severus Snape','Defense against the Dark Arts',8);
insert into student values(1,'Harry Potter',23456,'Defense against the Dark Arts',171);

select subject_info.* from subject_info;
select teacher_info.* from teacher_info;
select student_info.* from student_info;
select teacher.* from teacher;
select student.* from student;

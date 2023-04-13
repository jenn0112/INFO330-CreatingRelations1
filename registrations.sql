create table student_courses (
studentid integer not null,
course varchar(40) not null,
grade float default null,
foreign key (studentid) references students(id),
foreign key (course) references courses(code)
);

instert into student_courses (studentid, course)
VALUES
((select id from students where name='Fred Flintstone'), 'INFO330A'),
((select id from students where name='Fred Flintstone'), 'INFO448A'),
((select id from students where name='Fred Flintstone'), 'INFO314'),
((select id from students where name='Barney Rubble'), 'INFO330A'),
((select id from students where name='Barney Rubble'), 'INFO449A'),
((select id from students where name='Wilma Flintstone'), 'BAW010'),
((select id from students where name='Wilma Flintstone'), 'BAW100A'),
((select id from students where name='Betty Rubble'), 'BAW010');
  






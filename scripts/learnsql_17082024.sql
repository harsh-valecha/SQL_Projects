select * from student;

describe student;

describe courses;

describe studentcourse;

ALTER table studentcourse 
add foreign key (student_id) references student(id);

# adding a foreignkey 
ALTER table studentcourse 
add foreign key (course_id) references courses(id);

# changing the datatype of column
alter table courses
modify column price float(2);

alter table courses
modify column name varchar(64);

truncate courses;

select * from courses;

insert into courses (name, price) values ('Cloud Computing', 380.5);
insert into courses (name, price) values ('Cybersecurity', 723.93);
insert into courses (name, price) values ('Web Development', 795.99);
insert into courses (name, price) values ('Machine Learning', 535.29);
insert into courses (name, price) values ('Python Programming', 444.23);
insert into courses (name, price) values ('Web Development', 597.04);
insert into courses (name, price) values ('Machine Learning', 856.64);
insert into courses (name, price) values ('Python Programming', 478.22);
insert into courses (name, price) values ('Python Programming', 940.63);
insert into courses (name, price) values ('Web Development', 602.43);


select DISTINCT s.id from student s;

select s.id as student_id , c.id as course_id from student s ,courses c limit 20;

insert into studentcourse(student_id,course_id) values (1,)

INSERT INTO studentcourse (student_id, course_id) VALUES (1, 8);
INSERT INTO studentcourse (student_id, course_id) VALUES (1, 7);
INSERT INTO studentcourse (student_id, course_id) VALUES (1, 6);
INSERT INTO studentcourse (student_id, course_id) VALUES (1, 5);
INSERT INTO studentcourse (student_id, course_id) VALUES (1, 4);
INSERT INTO studentcourse (student_id, course_id) VALUES (1, 3);
INSERT INTO studentcourse (student_id, course_id) VALUES (1, 2);
INSERT INTO studentcourse (student_id, course_id) VALUES (1, 1);
INSERT INTO studentcourse (student_id, course_id) VALUES (2, 8);
INSERT INTO studentcourse (student_id, course_id) VALUES (2, 7);
INSERT INTO studentcourse (student_id, course_id) VALUES (2, 6);
INSERT INTO studentcourse (student_id, course_id) VALUES (2, 5);
INSERT INTO studentcourse (student_id, course_id) VALUES (2, 4);
INSERT INTO studentcourse (student_id, course_id) VALUES (2, 3);
INSERT INTO studentcourse (student_id, course_id) VALUES (2, 2);
INSERT INTO studentcourse (student_id, course_id) VALUES (2, 1);
INSERT INTO studentcourse (student_id, course_id) VALUES (203, 8);
INSERT INTO studentcourse (student_id, course_id) VALUES (203, 7);
INSERT INTO studentcourse (student_id, course_id) VALUES (203, 6);
INSERT INTO studentcourse (student_id, course_id) VALUES (203, 5);


select * from studentcourse where student_id = 2;




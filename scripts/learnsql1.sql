-- select "hello world";

# task #1 
/*
create a database - TestingPractice
create a table student , course
student - id , name , address
course -id , name , price
StudentCourse - to establish relation
*/

-- show databases;

-- create database testingpractice;

-- use testingpractice;

show tables;

create table student(
id int primary key ,
name varchar(16),
address varchar(16)
);

create table courses(
id int primary key,
name varchar(16),
price int 
);

create table studentcourse(
id int primary key,
student_id int references student.id,
course_id int references courses.id
);


describe `student`;

select * from student;

insert into `student`(name,address) values('Jaktap','bengal ki khadi');

select * from student where name='Jaktap';

update student s set s.address = 'New Delhi' where s.id = 250;

select * from student s where s.id = 250;

delete from student s where s.id = 250; 


insert into student (name,address) values ('koomar','looker');

select * from student s where s.name = 'koomar';


select * from student limit  10 ;


create table employee(
id int primary key auto_increment,
name varchar(15),
salary int
);


insert into employee(name,salary) values ('kamlesh',2300);
insert into employee (name, salary) values ('Hyacinth', 148735.92);
insert into employee (name, salary) values ('Doretta', 75938.76);
insert into employee (name, salary) values ('Rhona', 63278.39);
insert into employee (name, salary) values ('Phillie', 132575.73);
insert into employee (name, salary) values ('Pren', 67818.5);
insert into employee (name, salary) values ('Mirabel', 125800.02);
insert into employee (name, salary) values ('Crystal', 55724.81);
insert into employee (name, salary) values ('Jessee', 52781.43);
insert into employee (name, salary) values ('Phillip', 114870.76);
insert into employee (name, salary) values ('Bobinette', 77177.09);


select * from employee where salary<(select max(salary) from employee) order by salary desc limit 1;

select * from employee order by salary desc limit 2,2;

# duplicate rows - 
select name,salary,count(*) from employee group by name , salary having count(*)>1;


# top 5 salaries
select * from employee order by salary desc limit 5;


# duplicate rows
select name , count(name) from employee group by name having count(name)>1;




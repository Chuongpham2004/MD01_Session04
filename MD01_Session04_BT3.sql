create table student.students(
    id serial primary key,
    full_name varchar(100) not null,
    gender varchar(50),
    birth_year int,
    major varchar(100),
    gpa float
);

INSERT INTO student.students (full_name, gender, birth_year, major, gpa)
VALUES
    ('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
    ('Trần Thị Bích Ngọc', 'Nữ', 2001, 'Kinh tế', 3.2),
    ('Lê Quốc Cường', 'Nam', 2003, 'CNTT', 2.7),
    ('Phạm Minh Anh', 'Nữ', 2000, 'Luật', 3.9),
    ('Nguyễn Văn A', 'Nam', 2002, 'CNTT', 3.6),
    ('Lưu Đức Tài', 'Nam', 2004, 'Cơ khí', NULL),
    ('Võ Thị Thu Hằng', 'Nữ', 2001, 'CNTT', 3.0);

--
insert into student.students(full_name, gender, birth_year, major, gpa) values('Phan Hoàng Nam','Nam',2003,'CNTT',3.8);
--
update student.students set gpa = 3.4 where full_name = 'Lê Quốc Cường';
--
delete from student.students where gpa is null;
--
select * from student.students where major = 'CNTT' and gpa >= 3.0 order by gpa desc limit 3 offset 0;
--
select distinct major from student.students;
-- nganh CNTT sap xep giam dan theo gpa va tang dan theo ten
select * from student.students where major = 'CNTT' order by gpa desc , full_name asc;
--
select * from student.students where full_name ilike 'Nguyễn%';
--
select * from student.students where birth_year between 2001 and 2003 order by gpa asc;
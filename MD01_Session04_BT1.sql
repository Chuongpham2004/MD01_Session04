create table school.students(
    id serial primary key,
    name varchar(50) not null,
    age int,
    major varchar(50),
    gpa decimal(3,2)
);

insert into school.students(name, age, major, gpa) VALUES ('An',20, 'CNTT', 3.5), ('Bình', 21, 'Toán',3.2), ('Cường',22,'CNTT',3.8), ('Dương',20,'Vật lý',3.0),('Em',21,'CNTT',2.9)
--Them sinh vien moi
insert into school.students(name, age, major, gpa) VALUES('Hùng',23,'Hóa học',3.4);
--Cap nhat GPA cua sinh vien Binh thanh 3.6
update school.students set gpa = 3.6 where id = 2;
--Xoa sinh vien co GPA thap hon 3.0
delete from school.students where gpa < 3.0;
--Liet ke tat ca sinh vien
select school.students.name, school.students.major from school.students order by school.students.gpa desc;
--Liet ke ten sinh vien duy nhat co chuyen nganh CNTT
select distinct school.students.name from school.students where school.students.major = 'CNTT';
--Liet ke sinh vien có GPA tu 3.0 den 3.6
select * from school.students where gpa between 3.0 and 3.6;
--Liet ke sinh vien co ten bat dau bang chu 'C'
select * from school.students where name like 'C%';
--Hien thi 3 sinh vien dau tien
select * from school.students limit 3 offset 0;

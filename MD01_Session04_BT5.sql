create table employee.employees(
    id serial primary key,
    full_name varchar(100) not null,
    department varchar(50) not null,
    position varchar(100) not null,
    salary numeric not null,
    bonus numeric,
    join_year int
);
INSERT INTO employee.employees (full_name, department, position, salary, bonus, join_year)
VALUES
    ('Nguyễn Văn Huy', 'IT', 'Developer', 18000000, 1000000, 2021),
    ('Trần Thị Mai', 'HR', 'Recruiter', 12000000, NULL, 2020),
    ('Lê Quốc Trung', 'IT', 'Tester', 15000000, 800000, 2023),
    ('Nguyễn Văn Huy', 'IT', 'Developer', 18000000, 1000000, 2021),
    ('Phạm Ngọc Hân', 'Finance', 'Accountant', 14000000, NULL, 2019),
    ('Bùi Thị Lan', 'HR', 'HR Manager', 20000000, 3000000, 2018),
    ('Đặng Hữu Tài', 'IT', 'Developer', 17000000, NULL, 2022);

-- xoa cac ban ghi trung nhau hoan toan ve ten, phong ban, vi tri
delete from employee.employees
where id not in (
    select min(id) from employee.employees group by full_name, department, position
    );
--
update employee.employees
set salary = case when salary < 18000000 then salary * 1.1 else salary end,
    bonus = case when bonus is null then 500000 else bonus end
where (department = 'IT' and salary < 18000000) or (bonus is null);
--
select *,(salary + COALESCE(bonus,0)) as total_income from employee.employees where (department = 'IT' or department = 'HR') and join_year > 2020 and (salary + coalesce(bonus,0)) > 15000000 order by total_income desc limit 3 offset 0;
--tim tat ca nhan vien co ten bat dau bang nguyen hoac ket thuc bang han
SELECT * FROM employee.employees
WHERE full_name ILIKE 'Nguyễn%'
   OR full_name ILIKE '%Hân';
--
select distinct department from employee.employees where bonus is not null;
select * from employee.employees where bonus is not null order by department asc;
--
select * from employee.employees where join_year between 2019 and 2022 order by join_year asc;
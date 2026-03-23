create table library.books(
    id serial primary key,
    title varchar(100),
    author varchar(100) not null,
    category varchar(50) not null,
    publish_year int not null,
    price numeric,
    stock int
);

INSERT INTO library.books (title, author, category, publish_year, price, stock)
VALUES
    ('Lập trình C cơ bản', 'Nguyễn Văn Nam', 'CNTT', 2018, 95000, 20),
    ('Học SQL qua ví dụ', 'Trần Thị Hạnh', 'CSDL', 2020, 125000, 12),
    ('Lập trình C cơ bản', 'Nguyễn Văn Nam', 'CNTT', 2018, 95000, 20),
    ('Phân tích dữ liệu với Python', 'Lê Quốc Bảo', 'CNTT', 2022, 180000, NULL),
    ('Quản trị cơ sở dữ liệu', 'Nguyễn Thị Minh', 'CSDL', 2021, 150000, 5),
    ('Học máy cho người mới bắt đầu', 'Nguyễn Văn Nam', 'AI', 2023, 220000, 8),
    ('Khoa học dữ liệu cơ bản', 'Nguyễn Văn Nam', 'AI', 2023, 220000, NULL);

delete from library.books where id not in (select min(id) from library.books group by title,author,publish_year);
--
update library.books set price = price * 1.1 where publish_year > 2021 and price < 200000;
--
update library.books set stock = 0 where stock is NULL;
--
select * from library.books where (category = 'CNTT' or category = 'AI') and price between 100000 and 250000 order by price desc, title asc;
--
select * from library.books where title ilike '%học%';
--
select distinct category from library.books where publish_year > 2020;
--
select * from library.books limit 2 offset 1;

insert into library.books values (3, 'Học lập trình JAVA nâng cao', 'Phạm Hoàng Chương', 'CNTT', 2022, 180000, 10);



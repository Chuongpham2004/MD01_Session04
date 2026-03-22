create table product.products(
    id serial primary key,
    name varchar(255) not null,
    category varchar(255),
    price numeric(10,2),
    stock integer,
    manufacturer varchar(255)
);

INSERT INTO product.products (name, category, price, stock, manufacturer)
VALUES
    ('Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
    ('Chuột Logitech M90', 'Phụ kiện', 150000, 50, 'Logitech'),
    ('Bàn phím cơ Razer', 'Phụ kiện', 2200000, 0, 'Razer'),
    ('Macbook Air M2', 'Laptop', 32000000, 7, 'Apple'),
    ('iPhone 14 Pro Max', 'Điện thoại', 35000000, 15, 'Apple'),
    ('Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
    ('Tai nghe AirPods 3', 'Phụ kiện', 4500000, NULL, 'Apple');

insert into product.products(name, category, price, stock, manufacturer) values
    ('Chuột không dây Logitech M170','Phụ kiện',300000,20,'Logitech');
--
update product.products set price = price * 1.1 where manufacturer = 'Apple';
--
delete from product.products where stock = 0;
--
select * from product.products where price between 1000000 and 30000000 order by price desc;
--
select * from product.products where stock is null;
--
select distinct manufacturer from product.products;
--
select * from product.products order by price desc , name asc;
--
select * from product.products where name ilike '%laptop%' order by id asc;
--
select * from product.products order by price desc limit 2 offset 0;
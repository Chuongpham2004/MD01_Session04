create table product.products(
    id serial primary key,
    name varchar(50),
    category varchar(50),
    price decimal(10,2),
    stock int
);
insert into product.products(name,category,price, stock) values('Laptop Dell','Electronics',1500.00,5), ('Chuot Logitech','Electronics',25.50,50),('Ban phim Razer','Electronics',120.00,20),('Ghe Gaming','Furniture',300.00,10),('Ban Gaming','Furniture',120.00,20),('Tu lanh LG','Home Appliances',800.00,3),('May Giat Samsung','Home Appliances',600.00,2);
--Them san pham moi
insert into product.products(name, category, price, stock) values('Dieu hoa Panasonic','Home Appliances',400.00,10);
--Cap nhat stock cua laptop dell thanh 7
update product.products set stock=7 where name='Laptop Dell';
--Xoa san pham co stock = 0
delete from product.products where stock=0;
--Liet ke tat ca san pham theo gia tang dan
select * from product.products order by price asc;
--
select distinct category from product.products;
--
select * from product.products where price between 100 and 1000;
--
select * from product.products where name ilike '%lg%' or name ilike '%samsung%';
--
select * from product.products order by price desc limit 2 offset 0;


--

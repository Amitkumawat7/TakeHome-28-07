create database npci;

use npci;

create table Productcategory(
categoryid bigint primary key,
categoryname varchar(255)
);
insert into Productcategory values(101,"clothing");
insert into Productcategory values(102,"Footwear");


create table Product(
productid bigint primary key,
productname varchar(255),
description varchar(255),
unitprice decimal(13,2),
imageurl varchar(255),
unitsinstock int,
datecreated date,
lastupdated date,
categoryid bigint,
foreign key (categoryid)  references Productcategory(categoryid)
);
insert into product values(12,"T-shirts","JUST RIDER Men's Long Sleeve Running Shirts Athletic Workout T-Shirts",455,"image",2,'2022-06-08','2018-09-08',101);
insert into product values(13,"Cricket Shoes","Full metal spikes cricket shoes",5000,"image",8,'2022-06-08','2018-09-08',102);
select * from Product;

desc Product;
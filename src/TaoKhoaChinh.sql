use nv;
create table users(
    user_id int auto_increment primary key ,
    username nvarchar(40),
    password varchar(50),
    email varchar(50)
);
create table customer(
    id int auto_increment primary key ,
    name varchar(40),
    address varchar(255),
    email varchar(255)
);
create table orders(
    id int auto_increment,
    staff varchar(50),
    primary key (id),
    customer_id int,
    foreign key (customer_id)references customer(id)
);
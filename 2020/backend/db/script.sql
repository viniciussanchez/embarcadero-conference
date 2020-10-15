create database ec2020;

create table product (
    id bigserial not null,
    name varchar(60) not null,
    price numeric(16,4) not null,
    constraint pk_product primary key (id)
);
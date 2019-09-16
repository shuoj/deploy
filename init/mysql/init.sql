create database oj;
use oj;

create table if not exists authority
(
  id   bigint      not null
    primary key,
  name varchar(50) not null
);
insert into authority (id, name) values (1, 'ROLE_USER');
insert into authority (id, name) values (2, 'ROLE_ADMIN');
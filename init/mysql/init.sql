create database oj;
use oj;

create table if not exists authority
(
  id   bigint      not null
    primary key,
  name varchar(50) not null
);
INSERT INTO authority (id, name) VALUES (1, 'ROLE_USER');
INSERT INTO authority (id, name) VALUES (2, 'ROLE_ADMIN');
INSERT INTO authority (id, name) VALUES (3, 'ROLE_TEACHER');

create table idx_sequence
(
  name     varchar(20) not null
    primary key,
  next_idx bigint      null
) engine = MyISAM;

INSERT INTO idx_sequence (name, next_idx) VALUES ('problem', 1);
INSERT INTO idx_sequence (name, next_idx) VALUES ('contest', 1);
INSERT INTO idx_sequence (name, next_idx) VALUES ('group', 1);

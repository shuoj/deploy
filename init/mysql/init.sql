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
INSERT INTO authority (id, name) VALUES (3, 'ROLE_STUFF');

create table idx_sequence
(
  name     varchar(20) not null
    primary key,
  next_idx bigint      null
) engine = MyISAM;

INSERT INTO idx_sequence (name, next_idx) VALUES ('problem', 1);
INSERT INTO idx_sequence (name, next_idx) VALUES ('contest', 1);
INSERT INTO idx_sequence (name, next_idx) VALUES ('group', 1);

create table security_question
(
  id       varchar(40)  not null
    primary key,
  question varchar(255) null
)
  engine = MyISAM;

INSERT INTO oj.security_question (id, question) VALUES ('f6cd3037-79e3-4bad-a3e3-835e15c084dd', '你少年时代最好的朋友叫什么名字？');
INSERT INTO oj.security_question (id, question) VALUES ('e61ff476-e0d0-45d7-8388-98783729e947', '你的第一个宠物叫什么名字？');
INSERT INTO oj.security_question (id, question) VALUES ('0118f3b3-493d-4527-9ff5-5e7f7151ef2a', '你学会做的第一道菜是什么？');
INSERT INTO oj.security_question (id, question) VALUES ('0d1759ec-8503-4a8f-a5dc-07998ac4f6f8', '你第一次去电影院看的是哪一部电影？');
INSERT INTO oj.security_question (id, question) VALUES ('c7f31570-3c57-4246-81aa-12b92b3714dd', '你第一次坐飞机是去哪里？');
INSERT INTO oj.security_question (id, question) VALUES ('762e1f07-5d7f-4f71-8bac-42cfa411fd1e', '你上小学时最喜欢的老师姓什么？');

create table user
(
  id                       varchar(40)  not null
    primary key,
  ac_count                 bigint       null,
  ac_rate                  double       null,
  email                    varchar(50)  not null,
  enabled                  bit          not null,
  firstname                varchar(50)  null,
  last_password_reset_date datetime     not null,
  lastname                 varchar(50)  null,
  name                     varchar(50)  not null,
  password                 varchar(100) not null,
  refer_user_id            bigint       null,
  school                   varchar(50)  not null,
  signature                varchar(255) null,
  student_number           varchar(255) null,
  submit_count             bigint       null,
  temporary                bit          null,
  username                 varchar(50)  null
)
  engine = MyISAM;

INSERT INTO user (id, ac_count, ac_rate, email, enabled, firstname, last_password_reset_date, lastname, name, password, refer_user_id, school, signature, student_number, submit_count, temporary, username) VALUES ('6b2eec89-f8fe-431a-b026-8ee844329ff0', 0, 0, 'logoutuser@shu.edu.cn', true, '已注销', '2019-10-28 13:53:52', '用户', '用户已注销', '$2a$10$bSHGZ.xb65cC5zpolRxFQ.PmtZ1.x87ZxBOa820pPhtYf.zzGANme', null, '上海大学', null, null, 0, null, 'logoutuser');

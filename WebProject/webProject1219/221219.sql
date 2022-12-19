CREATE TABLE member1219
(
	userId varchar2(10 char) NOT NULL,
	userPw varchar2(10 char) NOT NULL,
	email varchar2(100 char) NOT NULL,
	PRIMARY KEY (userId)
);

select * from member1219;

create table test_tb_1219(
userId varchar2(10) not null primary key,
userPw varchar2(10) not null,
userName varchar2(10) not null,
gender varchar2(10) not null,
hobbit varchar2(100) not null,
phone varchar2(100) not null,
memo varchar2(255) not null
);

desc test_tb_1219;

drop table test_tb_1219;

delete from test_tb_1219 where userId='m2';

select * from test_tb_1219;

commit;
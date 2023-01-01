show databases;
use mysqltest1;

create table member1228(
userId varchar(100) not null,
userPw varchar(100) not null,
userName varchar(100) not null,
primary key(userId)
);

desc member1228;
select * from member1228;

drop table member1228;

insert into member1228(userId, userPw, userName) values('m1','1111','name1');
insert into member1228(userId, userPw, userName) values('m2','2222','name2');
insert into member1228(userId, userPw, userName) values('m3','3333','name3');
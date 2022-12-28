create table member1227(
userId varchar2(20) not null primary key,
userPw varchar2(20) not null,
userName varchar2(20) not null
);

insert into member1227(userId,userPw,userName) values('m1','11','s2');
insert into member1227(userId,userPw,userName) values('m2','22','s3');
insert into member1227(userId,userPw,userName) values('m3','33','s4');

commit;

select * from member1227;

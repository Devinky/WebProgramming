use mysqltest;
show tables;

create table ajax1(
userName varchar(100) not null primary key,
userAge varchar(45) not null,
userGender varchar(45) not null,
userAddr varchar(255) not null
);

desc ajax1;

insert into ajax1(userName, userAge, userGender, userAddr) values('in1', '11', '여성', '서울시');

select * from ajax1;
select count(*) from ajax1 where userName='in1' and userAge='11';

update ajax1 set userAge='21', userGender='여성', userAddr='도봉구' where userName='in1';
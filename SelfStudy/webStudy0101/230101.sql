use mysqltest;

create table study0101(
userId varchar(20) not null primary key,
userPw varchar(20) not null,
userName varchar(20) not null,
email varchar(100) not null
);

desc study0101;
select * from study0101;
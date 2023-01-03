use mysqltest;

create table ajax1(
userName varchar(100) not null primary key,
userAge varchar(45) not null,
userGender varchar(45) not null,
userAddr varchar(255) not null
);

desc ajax1;
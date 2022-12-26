CREATE TABLE login1221
(
	userId varchar2(10 char) NOT NULL,
	userPw varchar2(10 char) NOT NULL,
	gender varchar2(10 char) NOT NULL,
	hobbys varchar2(100 char) NOT NULL,
	city varchar2(10 char) NOT NULL,
	memo varchar2(255 char) NOT NULL,
	PRIMARY KEY (userId)
);

drop table login1221;

insert into login1221(userId,userPw,gender,hobbys,city,memo) values('m1','1111','남성','게임','서울','자기소개1');
insert into login1221(userId,userPw,gender,hobbys,city,memo) values('m2','2222','남성','음악감상','부산','자기소개2');
insert into login1221(userId,userPw,gender,hobbys,city,memo) values('m3','3333','남성','영화관람','경기','자기소개3');

commit;

select * from login1221;

--로그인 count(*) 1이면 로그인 성공, 아니면 실패
select count(*) from login1221 where userId='m1' and userPw='1111';
--회원 상세 정보
select * from login1221 where userId='m2';

desc login1221;
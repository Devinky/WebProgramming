CREATE TABLE login1222
(
	userId varchar2(10 char) NOT NULL,
	userPw varchar2(10 char) NOT NULL,
	gender varchar2(10 char) NOT NULL,
	hobbys varchar2(100 char) NOT NULL,
	city varchar2(10 char) NOT NULL,
	memo varchar2(255 char) NOT NULL,
	PRIMARY KEY (userId)
);

drop table login1222;

insert into login1222(userId,userPw,gender,hobbys,city,memo) values('m1','1111','����','����','����','�ڱ�Ұ�1');
insert into login1222(userId,userPw,gender,hobbys,city,memo) values('m2','2222','����','���ǰ���','�λ�','�ڱ�Ұ�2');
insert into login1222(userId,userPw,gender,hobbys,city,memo) values('m3','3333','����','��ȭ����','���','�ڱ�Ұ�3');

commit;

select * from login1222;

--�α��� count(*) 1�̸� �α��� ����, �ƴϸ� ����
select count(*) from login1222 where userId='m1' and userPw='1111';
--ȸ�� �� ����
select * from login122 where userId='m2';

desc login1222;
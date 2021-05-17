drop table s;

use acedb;

create table if not exists s(  -- 이미 같은 이름의 테이블이 있으면 만들지 않음 
	id int auto_increment primary key,    -- id값자동증가
	name varchar(20),
    kor tinyint,
    eng tinyint,
    mat tinyint);
    
insert into s(id, name, kor, eng, mat) values(101,'이순신',85,87,90);    -- id값이 자동으로 증가한다.
insert into s(name, kor, eng, mat) values('강감찬',75,80,90);
insert into s(name, kor, eng, mat) values('한석봉',99,98,99);
insert into s(name, kor, eng, mat) values('황진이',35,45,20);
insert into s(name, kor, eng, mat) values('안중근',90,85,90);
insert into s(name, kor, eng, mat) values('박문수',95,98,96);
insert into s(name, kor, eng, mat) values('임꺽정',15,35,45);
insert into s(name, kor, eng, mat) values('김정호',90,95,80);
insert into s(name, kor, eng, mat) values('정몽주',90,90,95);
insert into s(name, kor, eng, mat) values('양주종',50,45,60);

desc s;
select count(*) from s;
select * from s;

select name, eng from s;
select name, eng from s limit 5;
select name, eng from s limit 5, 3;
select name, eng from s order by name;
select name, eng from s order by name asc;  -- 기본값
select name, eng, mat from s order by eng desc;  
select name, eng, mat from s order by eng desc, mat desc; 
select name, eng, mat from s order by eng desc, mat asc;

select name as '이름', kor as '국어' from s; -- 필드네임 수정
select name as '이름', min(kor) as '국어' from s; -- 첫번째 이름 + 최하 국어 점수(이름에 해당하는 사람의 점수는 아님) 
select min(kor) as '국어' from s;
select name as '이름', max(kor) as '국어' from s;
select max(kor), max(eng), max(mat), avg(kor) from s; -- 각각 점수의 최고 점수
select name, (kor+eng+mat) as '총점' from s; 
select name , (kor+eng+mat) as '총점',
(kor+eng+mat) / 3 as '평균' from s;

drop table s2;
create table s2(
select name , (kor+eng+mat) as '총점', (kor+eng+mat) / 3.0 as '평균' from s); -- s의 일부 내용?으로 새로운 테이블 만듬
 show tables;
 select * from s2;
 
 create table if not exists s5(
 name char(20),
 total int,
 avg float);
 
insert into s5
  select name, kor+eng+mat, (kor+eng+mat)/3.0 from s;
  
drop table s5;  

select * from s5;

select * from s5 where avg <= 60;
select * from s5 where avg > 80 and avg < 90;
select * from s5 where 70 <= avg < 80;
select * from s5 where avg between 80 and 90; -- 80과 90포함
select * from s5 where name = '이순신';
insert into s5(name) values('이몽룡');
insert into s5(name) values('이황');
select * from s5 where name like '이%';   -- 뒤에 뭐가 오든 상관없다.
select * from s5 where name like '%신';
select * from s5 where name like '이_신';

select trim('    klk    ');
select rtrim('    klk    ');








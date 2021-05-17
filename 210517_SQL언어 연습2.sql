use world;
show tables;
desc city;
select count(*) from city;
select * from city where CountryCode= 'kor';
select * from city where CountryCode= 'jpn';
desc country;
select count(*) from country;
select count(*) from countrylanguage;
select * from countrylanguage;

select * from city where name = 'seoul';
select * from city where name  in ('seoul', 'new york');
select * from city where CountryCode =
(select CountryCode from city where name = 'seoul');
select * from city order by Population desc limit 15;

select countrycode, name, Max(population) from city
group by CountryCode having max(Population) > 9000000;


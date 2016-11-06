select * from regions;
select * from COUNTRIES;
select country_name from countries;
insert into countries values ('RU','Russia',1);
insert into countries values ('UA','Ukraine',2);
update countries set region_id = 1 where country_id = 'UA';  
select * from countries,regions where countries.REGION_ID = regions.REGION_ID and regions.REGION_NAME = 'Asia' order by countries.COUNTRY_ID;
insert into countries values ('MD','Moldova',1);
delete from countries where COUNTRY_ID = 'MD';
select count(*) x, regions.REGION_NAME from countries,regions where countries.REGION_ID = regions.REGION_ID group by regions.REGION_NAME having count(*) > 5 order by x; 
select * from COUNTRIES where ROWNUM < 10;
select * from COUNTRIES where regexp_like (country_name,'^......$') and rownum < 3;
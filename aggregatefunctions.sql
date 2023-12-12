use class;
create table employee2(
id int primary key auto_increment,
name varchar(25),
sal bigint not null,
state varchar(20)not null,
country varchar(20) not null default('india'),
isactive bit default(1));

drop table employee2;

alter table class.employee2 drop column sal;


insert into employee2(name,sal,state,country,isactive)values('jyothi',50000,'ap','india',1);
insert into employee2(name,sal,state,country,isactive)values('navya',40000,'ap','uk',1);
insert into employee2(name,sal,state,country,isactive)values('bhavani',60000,'ts','india',1);

select*from employee2;

#count no.of employees in ap ,ts
select count(id) from employee2 where state='ap';

select count(id) from employee2 where state='uk';

#get both results in one result set.
select state,count(id) as noofemployees from employee2 group by state;

#get the no.of emp's as per country and state.
select state,country,count(id) as noofemployees from employee2 group by state,country;
select sal,max(sal) as noofemployees from employee2 group by sal;
select sal,min(id) as noofemployees from employee2 group by sal;

select sal,avg(sal) as noofemployees from employee2 group by sal;


#get the no.of empls per country and state having sal more than 30000.
select country,state,count(id)as noofemp from employee2 where sal>=30000 group by country,state;

#having
select country,state,count(id)as noofemp from employee2 where sal>=30000 group by country,state having count(id)>=2;



#aggregate

#count no.of emp's in atable
select count(id) from employee2;

select count(*) from employee2;

select count(name) from employee2;
select count(state) from employee2 where state='ap';

select sum(id) from employee2;

select sum(state) from employee2;

select avg(id) from employee2;

select avg(sal) from employee2;
select  avg(sal) as noofemp from employee2 where id='bhavani';


select min(sal) from employee2;

select max(sal) from employee2;

select ltrim(    name)from employee2;
select ltrim(id) from employee2;
select  ltrim(      state)from employee2;

select rtrim(name)from employee2;

select length(state)from employee2;

select length(country) from employee2;
select left (name,1) from employee2;
select left (name,4) from employee2;
select left(state,1)from employee2;

select right(country,1)from employee2;

select right(state,1) from employee2;
select lower('JYOTHI') from employee2;
select lower('jyothi') from employee2;
select lower(state) from employee2;
select lower(name)from employee2;

select upper('jyothi') from employee2;

select upper('navya')from employee2;

select upper(name)from employee2;


select current_date();
select now();

select date_add("2023-12-12", interval 10 day);

select day('2023-12-12');

select year('2023-12-12');

select dayname('2023-12-12');

select month('2023-12-12');
select monthname('2023-12-12');
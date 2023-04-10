
select * from EMPLOYEES;

--get first name 5 letter , middle has Z
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '__z__';

--get first name in employees, second char is u
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '_u%';

-- get all employees, salary desc
select *
from EMPLOYEES
order by SALARY desc;

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
order by SALARY desc;

--get top 10 salary
select FIRST_NAME, LAST_NAME, SALARY
from (select  FIRST_NAME, LAST_NAME, SALARY
      from EMPLOYEES
      order by SALARY desc )
where ROWNUM < 11;

select *
from (select  distinct SALARY
      from EMPLOYEES
      order by SALARY desc )
where ROWNUM < 11;

--get me unique first name: how many of them

select count(distinct FIRST_NAME) from EMPLOYEES;

-- find duplicate name
select first_name, count(*)
from EMPLOYEES
group by first_name
having count(*)>1;

--location
select * from LOCATIONS;

select  * from jobs;

select job_title from jobs
where job_title in('president', 'Sales Manager', 'Finance Manager');

select job_title from jobs
where job_title ='president' or job_title ='Sales Manager' or job_title = 'Finance Manager';

--get all countries except US and canada

select country_name from countries
where country_name not in ('united state','canada');


select first_name, last_name from employees
where salary between 300 and 600
order by salary desc;

select first_name, last_name from employees
where salary >= 300 and salary <= 600
order by salary desc;

-- get first name where depertment id is not null
select first_name, last_name from EMPLOYEES
where department_id is not null;

select count(*) from employees
where department_id is not null;

select first_name from employees
where first_name like '__z__';


SELECT FIRST_NAME, LAST_NAME from EMPLOYEES
where DEPARTMENT_ID = 'IT_PROG';














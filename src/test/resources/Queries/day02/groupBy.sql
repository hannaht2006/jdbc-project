select * from EMPLOYEES;


--display average for SA_REP
select avg(SALARY)from EMPLOYEES
where JOB_ID = 'SA_REP';

--display average salary for MK_MAN
select avg(SALARY)from EMPLOYEES
where JOB_ID = 'MK_MAN';

--how many difference job id we have

select count(distinct JOB_ID) from EMPLOYEES;

/*
 Instead of typing query for difference job ids
 we are gonna group them based on job ID and get average salary in one shot
 */

 select JOB_ID, avg(SALARY), max(SALARY), min(SALARY), sum(SALARY)
, count(*)
 from EMPLOYEES
group by JOB_ID;

--get total salary for each department from employees table
select DEPARTMENT_ID, sum(SALARY), max(salary),round(avg(SALARY)) ,count(*) from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from result
 group by DEPARTMENT_ID;

--order results based on max salary in ASC
select DEPARTMENT_ID, sum(SALARY), max(salary),round(avg(SALARY)) ,count(*) from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from result
group by DEPARTMENT_ID
order by max(SALARY);

--order results based on max salary in ASC and min desc
select DEPARTMENT_ID, sum(SALARY), max(salary),round(avg(SALARY)) ,count(*) from EMPLOYEES
where DEPARTMENT_ID is not null -- to remove null department id from result
group by DEPARTMENT_ID
order by max(SALARY), min(SALARY)desc ;

--display how many department in each location
select LOCATION_ID , count(*)  from LOCATIONS
group by LOCATION_ID;


--order results based on number of department in desc
select LOCATION_ID , count(*)  from LOCATIONS
group by LOCATION_ID
order by count(*)desc ;

select LOCATION_ID , count(*)  from LOCATIONS
group by LOCATION_ID
order by 2 desc ;

--displace how many country in each regions

select REGION_ID, count(COUNTRY_NAME) from COUNTRIES
group by REGION_ID;

select REGION_ID, count(COUNTRY_NAME) from COUNTRIES
group by REGION_ID
order by count(COUNTRY_NAME)desc ;

--order them based on number of countries decs
select REGION_ID, count(*) from COUNTRIES
group by REGION_ID
order by count(*)desc ;


select FIRST_NAME,count(*) from EMPLOYEES
group by FIRST_NAME
having count(*)>2
order by FIRST_NAME desc ;

select FIRST_NAME, count(*) from EMPLOYEES
   group by FIRST_NAME
   having count(*)>1
    order by 2 desc;


select DEPARTMENT_ID, count(FIRST_NAME) from EMPLOYEES
group by DEPARTMENT_ID
having DEPARTMENT_ID is not null
order by count(FIRST_NAME);


Select department_id, count(*), max(SALARY) from employees
group by department_id
having max(SALARY) > 3000
order by max(SALARY);



----
select DEPARTMENT_ID, count(*) from EMPLOYEES
    group by DEPARTMENT_ID
having count(*)>3;

select first_name, last_name, salary from employees
where salary = (select min(salary) from (select  salary from employees
order by salary desc)
where rownum<15);


select min(salary) from (select distinct salary from employees
                                                  order by salary desc)
                where rownum<15;


select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*) >1;



















































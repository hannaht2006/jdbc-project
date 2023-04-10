select * from EMPLOYEES;

/*
 AGGREATE FUNCTION - MULTI ROWS - GROUP FUNCTIONS

 -count --> it will count rows
 -max --> it will max value
 -min --> it will min value
 -sum --> it will total value
 -avg -->it will average value

 aggregate function takes multi row and return one result
  all aggregate function will ignore null value


 */
-- how many departments we have?
select count(*) from DEPARTMENTS;

--how many locations we have?

select count(*) from LOCATIONS;

--NULL value
select * from EMPLOYEES;

--count(*) will count all rows after execution that why we have result as 1
select count(*)from EMPLOYEES
where DEPARTMENT_ID is null; --> 1: she is Kimberly

--count(DEPARTMENT_ID) will count only DEPARTMENT_ID after after execution
select count(DEPARTMENT_ID)from EMPLOYEES
where DEPARTMENT_ID is null;-->0 because no value in department ID; she is Kimberly

--Both execution will give same result since we don't have any NULL values for department ID
select count(*)from EMPLOYEES
where DEPARTMENT_ID is not null;

select DEPARTMENT_ID, count(DEPARTMENT_ID)from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
having count(DEPARTMENT_ID)>1;

select DEPARTMENT_ID, count(*) from EMPLOYEES
    group by DEPARTMENT_ID
having count(*)>5;


-- how many different firstname we have?
select count( distinct FIRST_NAME) from EMPLOYEES;

--how many employees working as IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in('IT_PROG', 'SA_REP');

Select count(*) from employees
where job_id = 'IT_PROG';

--how many employees getting salary more than 6000
select count(*) from EMPLOYEES
where SALARY>6000; -->55

-- MAX
select max(SALARY) from EMPLOYEES;

--MIN
select min(SALARY) from EMPLOYEES;

--AVG
select avg(SALARY) from EMPLOYEES;

select round(avg(SALARY),0) from EMPLOYEES;
select round(avg(SALARY),2) from EMPLOYEES;
select round(avg(SALARY),3) from EMPLOYEES;

--SUM
select sum(SALARY) from EMPLOYEES;







































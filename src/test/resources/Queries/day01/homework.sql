
select * from EMPLOYEES;


--List all the employees first and last name with their salary in employees
-- table
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

---- 2. How many employees have salary less than 5000?

select * from EMPLOYEES
where SALARY<5000;


select count(*) from EMPLOYEES
where SALARY<5000;
--49

--How many employees have salary between 6000 and 7000?

select count(*) from EMPLOYEES
where SALARY between 6000 and 7000;
-- 13
--List all the different region_ids in countries table

select distinct REGION_ID from COUNTRIES;

--display the salary of the employee Douglas Douglas (lastName: Grant, firstName: Douglas)
select SALARY from EMPLOYEES
where FIRST_NAME = 'Douglas' and LAST_NAME='Grant';

--display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive

select * from DEPARTMENTS
where DEPARTMENT_NAME in ('IT', 'Public Relations', 'Sales', 'Executive');

--display the maximum salary in employees table
select max(SALARY) from EMPLOYEES;

select * from EMPLOYEES
    where SALARY = (select max(SALARY) from EMPLOYEES);
--24000

--display the the minimum salary in employees table
select SALARY from EMPLOYEES
order by SALARY  ;

select min(SALARY) from EMPLOYEES;

select * from EMPLOYEES
where SALARY = (select min(SALARY) from EMPLOYEES);
--2100

--display the average salary of the employees
select round(avg(SALARY), 0) from EMPLOYEES;

select * from EMPLOYEES
    where SALARY = (select round(avg(SALARY), 0) from EMPLOYEES);

--count the total numbers of the departments in departs table
select sum(DEPARTMENT_ID) from DEPARTMENTS;


--sort the start_date in ascending order in job_history's table
select * from JOB_HISTORY
order by START_DATE;

--sort the start_date in descending order in job_history's table
select * from JOB_HISTORY
order by START_DATE desc ;

--display all records whose last name contains 2 lowercase 'a's
select *
from EMPLOYEES
where LAST_NAME like '%a%a%' and LAST_NAME not like '%a%a%a%';

--display all the employees whose first name starts with 'A'
select * from EMPLOYEES
where FIRST_NAME like 'A%';

--display all the employees whose job_ID contains 'IT'
select * from EMPLOYEES
where JOB_ID like 'IT%';

--display all  unique job_id that end with CLERK in employee table
select distinct JOB_ID from EMPLOYEES
where JOB_ID like '%CLERK';

--display all  employees first name starts with A and have exactly 4 characters
select * from EMPLOYEES
where FIRST_NAME like 'A___';

--display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES
where DEPARTMENT_ID in (50, 80, 100);


--display all employees who does not work in any one of these department id
--90, 60,  100, 130, 120
select * from EMPLOYEES
where DEPARTMENT_ID not in (90, 60, 100, 130, 120);

--divide employees into groups by using their job id
-- 1 display the maximum salaries in each groups
-- 2 display the minimum salaries in each groups
-- 3 display the average salary of each group
-- 4 how many employees are there in each group that have minimum salary of 5000 ?
-- 5 display the total budgests of each groups

select  JOB_ID from EMPLOYEES group by JOB_ID;
select  JOB_ID, count (*) from EMPLOYEES group by JOB_ID;
select  JOB_ID, max(SALARY) from EMPLOYEES group by JOB_ID;
select  JOB_ID, min (SALARY) from EMPLOYEES group by JOB_ID;
select  JOB_ID, avg(round(SALARY)) from EMPLOYEES group by JOB_ID;
select  JOB_ID, sum(SALARY) from EMPLOYEES group by JOB_ID;

-- group by ..... having
select  JOB_ID, count (*) from EMPLOYEES
group by JOB_ID
having max(SALARY)> 5000;

--











































































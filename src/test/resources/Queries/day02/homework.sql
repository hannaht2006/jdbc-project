select * from EMPLOYEES;

-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select * from EMPLOYEES
where DEPARTMENT_ID not in (90, 60,  100, 130, 120);

-- 20. divide employees into groups by using their job id
-- 1 display the maximum salaries in each groups
-- 2 display the minium salaries in each groups
-- 3 display the average salary of each group
-- 4 how many employees are there in each group that have minimum salary of 5000 ?
-- 5 display the total budgests of each groups
select JOB_ID,max(SALARY), min(SALARY), avg(SALARY), sum(SALARY), count(SALARY)
from EMPLOYEES
where SALARY<=5000
group by JOB_ID;

-- 21. display all job_id and average salary who work as any of these jobs IT_PROG,SA_REP, FI_ACCOUNT, AD_VP
select * from EMPLOYEES;
select JOB_ID, avg(SALARY)
from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP', 'FI_ACCOUNT','AD_VP')
group by JOB_ID;

-- 22.display max salary  for each department
select * from DEPARTMENTS;
select DEPARTMENT_ID , max(SALARY)
from EMPLOYEES
group by DEPARTMENT_ID;
-- 23. display total salary for each department except department_id 50, and where total salary >30000
select DEPARTMENT_ID, sum(SALARY)
from EMPLOYEES
where SALARY>5000
group by DEPARTMENT_ID
having DEPARTMENT_ID !=50;

-- Task 1 :  How many employees working for each manager
select MANAGER_ID, count(*)
from EMPLOYEES
group by MANAGER_ID;
-- Task 2 :  How many locations we have  for each country
select COUNTRY_ID, count(*)
from LOCATIONS
group by COUNTRY_ID;
-- Task 3 :  Display all employees salary in following format as column name Employees Salary
--Ex :   Steven makes 24000
--                  Neena makes 17000

select FIRST_NAME || ' makes ' || SALARY
as Employees_salary
from EMPLOYEES;

















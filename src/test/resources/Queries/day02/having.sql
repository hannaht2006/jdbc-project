select * from EMPLOYEES;

--display job id where their avg salary more than 5k
select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
order by 2;

select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
having avg(SALARY)>5000
order by avg(SALARY);

--display department id where employees count is bigger than 5
select DEPARTMENT_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5;

--order by number of employees desc
select DEPARTMENT_ID, count(*)
from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5
order by 2;

--display duplicate (more than 1) name from employees table
select FIRST_NAME, count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*)>1
order by 1;

select FIRST_NAME, count(*) as first_name_count
from EMPLOYEES
group by FIRST_NAME
having count(*)>1
order by 1;





























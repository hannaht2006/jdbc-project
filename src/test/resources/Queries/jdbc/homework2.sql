select * from JOBS;

--Task 1: get me job_title where job_title President, Sales Manager, Finance Manager
--Do it with OR and IN
select JOB_TITLE
from JOBS
where JOB_TITLE = 'President' or JOB_TITLE = 'Sales Manager' or JOB_TITLE = 'Finance Manager';

--Task 2 : get me all country names except United States of America and Canada

select * from COUNTRIES
where COUNTRY_NAME not in ('Canada',
 'United States of America');

--Task 3: get me first name and last name where salary 3000 to 10000
SELECT FIRST_NAME, LAST_NAME
from EMPLOYEES
where SALARY between 3000 and 10000;

--Task 4: get me first name all employees where department id is null
select  FIRST_NAME, DEPARTMENT_ID
from EMPLOYEES
where DEPARTMENT_ID is null;

--Task 5: get me firstname all employees where department id is not null
select  FIRST_NAME, DEPARTMENT_ID
from EMPLOYEES
where DEPARTMENT_ID is not null;

--Task 6: get me all employees whose first name starts with C
select  * from EMPLOYEES
where FIRST_NAME like 'C%';

--Task 7: get me 5 letter first names where the middle char is z
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '__z__';

--Task 8: get me first name where second char is u
select FIRST_NAME
from EMPLOYEES
where FIRST_NAME like '_u%';

--Task 9: get me all employees information based on who is making more salary to low salary
select * from  EMPLOYEES
order by SALARY desc ;

--Task 10: get me all employees information order by first name asc and last name desc


--Task 11: get me unique first name row numbers in a table


--Task 12: get me average salary of employees


--Task 13: get me min salary of employees


--Task 14: get me max salary of employees


--Task 15: get me total salary of employees


--Task 16: add @gmail.com and name new column to full_email




















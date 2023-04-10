select * from EMPLOYEES;
/*

 LIKE
 -percent (%) for matching any sequence of character
 - underscore(_) for matching any single of character
 */
--display all info from employees
-- where the first name startwith B
select * from EMPLOYEES
where FIRST_NAME like 'B%';

select * from EMPLOYEES
where FIRST_NAME like 'B_';--> it will give all info name starts with 'B' and length is 2

--display all info from employees
-- where the first name startwith B and lenght is 5
select * from EMPLOYEES
where FIRST_NAME like 'B____';

--display 5 letter firstname from employees where middle char is Z
select * from EMPLOYEES
where FIRST_NAME like '__z__';
--Note: Values are case sensitive
-- keywords/tables /columns are not case sensitive

--display 5 letter firstname from employees where end with e
select * from EMPLOYEES
where FIRST_NAME like '____e';

--display all firstname from employees where end with e
select * from EMPLOYEES
where FIRST_NAME like '%e';

--display all firstname from employees where second letter is a
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '_a%';

--display all info from employees where job ID contains IT
select * from EMPLOYEES
where JOB_ID like 'IT%';

--display all info from employees where firstname starts with H and end with l
select * from EMPLOYEES
where FIRST_NAME like 'H%l';














select * from EMPLOYEES;
/*
1. column aliases --> it is temporary name to show in display

2.




 */

 select FIRST_NAME from EMPLOYEES;

-- it makes column name upper case to show in display. we can give any space too
select FIRST_NAME as given_name from EMPLOYEES;

--it will show column as it is. Also we can give space too
select FIRST_NAME as "given name" from EMPLOYEES;

-- display annual salary for all employees as annual-salary
select FIRST_NAME, SALARY*12 as annual_salary from EMPLOYEES;

/*
 String functions
 --concat

 --JAva firstname + " " + lastname
 --sql: || --> firstname || ' ' || lastname


 */

 --add email to @gmail domain for all employees and show column name as full_email
select EMAIL||'@gmail.com' as full_email
from EMPLOYEES;


--CONCAT(value1, value2)

select concat(EMAIL, '@gmail.com') as full_email
from EMPLOYEES;


select concat('cydeo', concat(EMAIL, '@gmail.com')) as full_email
from EMPLOYEES;









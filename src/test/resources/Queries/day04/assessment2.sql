select * from EMPLOYEES;

/*
  Write a query to print the name and salary for all employees in the Employee
table who earn a salary larger than $500. Sort your results in ascending order of
the last 3 characters in the employee's name, if two or more employees have
names ending with same 3 characters, then sort them by highest (descending)
salary.
 */

create view Ass_employee as
select EMPLOYEE_ID as ID,
 SALARY as SALARY,
 FIRST_NAME ||' '||LAST_NAME as FullName
from EMPLOYEES;

select * from Ass_employee;

select FULLNAME, substr(FullName,-3 ), SALARY from ASS_EMPLOYEE
where SALARY > 500
order by substr(FullName,-3 ) , SALARY desc  ;


--salary >3000
select FullName, SALARY
from ASS_EMPLOYEE
where SALARY > 3000
order by substr(FullName, -3) ,  SALARY desc ;
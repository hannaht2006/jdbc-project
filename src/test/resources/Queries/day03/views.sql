select * from EMPLOYEES;

--display initial first name and lastname
select SUBSTR(FIRST_NAME,0,1) ||'.'||substr(LAST_NAME, 0, 1)||'.'
               --S               .            K                .
           as initials,
 FIRST_NAME || ' makes ' || SALARY
   --Steven      makes      24000
           as Employees_salary
from EMPLOYEES;

--for to not type the above like everyday to run query --> create VIEW

create view EmployeesInfo as
select SUBSTR(FIRST_NAME,0,1) ||'.'||substr(LAST_NAME, 0, 1)||'.'
           as initials,
       FIRST_NAME || ' makes ' || SALARY
           as Employees_salary
from EMPLOYEES;

--call the EMPLOYEESINFO table from view:
select * from EMPLOYEESINFO;

--how many columns we have in the view:
  --initials
  -- employees_Salary
--can we call specific column from view?

select initials from EMPLOYEESINFO;
select initials, Employees_salary from EMPLOYEESINFO;

--how to drop view employeesInfo
drop view EMPLOYEESINFO;

create view employee as
select EMPLOYEE_ID as ID,
       SALARY as SALARY,
       FIRST_NAME ||' '||LAST_NAME as FullName
from EMPLOYEES;

--
create view HumanResource as
    select concat(concat(FIRST_NAME, ' '), LAST_NAME) as name,
           PHONE_NUMBER as Phone,
           EMPLOYEE_ID as code
from EMPLOYEES;
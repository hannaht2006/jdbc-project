select * from EMPLOYEES;

/*

 ORDER BY
 it allows us sort data based on provided column
 as a DEFAULT it will order the result ASCENDING ORDER (A-Z, 1-9)
 IF YOU WANT sort it descending order we need specify right after column name

 */

--display all employees based salary in asc order
select  * from EMPLOYEES
order by SALARY  ;

select  * from EMPLOYEES
order by SALARY asc ;

--display all employees based salary in des order
 select  * from EMPLOYEES
order by SALARY desc ;

--display all employees based first name in des order
select  * from EMPLOYEES
order by FIRST_NAME desc ;

--can we use index to order result?
-- yes, but index need to within limit from column number
select  * from EMPLOYEES
order by 8 desc ;

--display all employees where employees ID is smaller than 120 and order them by salary
select  * from EMPLOYEES
where EMPLOYEE_ID < 120
order by salary desc ;


--display all info from employees order them based on first name desc
select * from EMPLOYEES
order by FIRST_NAME asc ;

--IQ: display all info from employees order them based on first name asc
--and last name desc
select * from EMPLOYEES
order by first_NAME, LAST_NAME desc ;
/*
 it will first order result based on firstname
 after getting result if we have same name it will order them
 based on lastname descending order


 */





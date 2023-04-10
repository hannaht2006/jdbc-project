select * from EMPLOYEES;

select MANAGER_ID, count(*) as employee_count from EMPLOYEES
    group by MANAGER_ID
    having count(*)>6
order by count (*) DESC ;

-- Task 1 :  How many employees working for each manager
select MANAGER_ID, count(*) as employees_count
from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID;

--let order them desc
select MANAGER_ID, count(*) as employees_count
from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
order by employees_count desc ;

--ignore manager id where employees count smaller than 6
select MANAGER_ID, count(*) as employees_count
from EMPLOYEES
where MANAGER_ID is not null
group by MANAGER_ID
having count(*)>6
order by employees_count desc ;


-- Task 2 :  How many locations we have  for each country
select COUNTRY_ID, count(*) as Location_count
from LOCATIONS
group by COUNTRY_ID;

--order by country id desc

select COUNTRY_ID, count(*) as Location_count
from LOCATIONS
where COUNTRY_ID in('US','CA')
group by COUNTRY_ID
order by COUNTRY_ID desc ;

--display where location count bigger than 2
select COUNTRY_ID, count(*) as Location_count
from LOCATIONS
where COUNTRY_ID in('US','CA')
group by COUNTRY_ID
having count(*)>2;

--add UK and display where location count bigger than 2
select COUNTRY_ID, count(*) as Location_count
from LOCATIONS
where COUNTRY_ID in('US','CA', 'UK')
group by COUNTRY_ID
having count(*)>2
order by COUNTRY_ID;

-- Task 3 :  Display all employees salary in following format as column name Employees Salary
--Ex :   Steven makes 24000
--                  Neena makes 17000

select FIRST_NAME || ' makes ' || SALARY
           as Employees_salary
from EMPLOYEES;

select concat(concat(FIRST_NAME, ' makes '), SALARY)
           as Employees_salary
from EMPLOYEES;

--
select concat(concat(FIRST_NAME, ' belongs department ID '), DEPARTMENT_ID)
as Employees_department
from EMPLOYEES;

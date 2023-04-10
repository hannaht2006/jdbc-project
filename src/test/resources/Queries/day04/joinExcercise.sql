select * from EMPLOYEES;

--1. Display all first_name and department_name
select * from DEPARTMENTS;
select * from EMPLOYEES;

select FIRST_NAME,DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D --only matching ones, therefore 106 instead of 107
     on E.DEPARTMENT_ID = D.DEPARTMENT_ID;


--order list based on first name
select FIRST_NAME,DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D --only matching ones, therefore 106 instead of 107
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME;

--2.Display all first_name and department_name including the  department without employee
--right join
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e right join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--left join
select  FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS d left join EMPLOYEES e
on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

--how many employees each department
select  DEPARTMENT_NAME, count (*) from
 DEPARTMENTS d left join EMPLOYEES e
              on d.DEPARTMENT_ID = e.DEPARTMENT_ID
group by DEPARTMENT_NAME;

--3.Display all first_name and department_name including the  employee without department
select FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS d right join EMPLOYEES e
on d.DEPARTMENT_ID = e.DEPARTMENT_ID
order by FIRST_NAME;

--or left join
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e full join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
order by FIRST_NAME;



--5.Display All cities and related country names
select * from LOCATIONS;

select CITY , COUNTRY_NAME
from LOCATIONS l inner join COUNTRIES C
    on C.COUNTRY_ID = l.COUNTRY_ID
order by COUNTRY_NAME;


--6.Display All cities and related country names  including with countries without city
select CITY , COUNTRY_NAME
from LOCATIONS  L right join COUNTRIES C
on L.COUNTRY_ID = c.COUNTRY_ID
order by city;

select * from COUNTRIES;

--7.Display all department name and  street adresss
select * from ADDRESS;
select * from DEPARTMENTS;
select * from EMPLOYEES;
select  * from LOCATIONS;
select * from COUNTRIES;

select DEPARTMENT_NAME, street_address, D.LOCATION_ID
from DEPARTMENTS D full join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID;

select DEPARTMENT_NAME, street_address
from DEPARTMENTS D inner join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID;


--8.Display first_name,last_name and department_name,city for all employees
select FIRST_NAME, LAST_NAME,DEPARTMENT_NAME, CITY
from EMPLOYEES E
    inner join DEPARTMENTS D
    on E.DEPARTMENT_ID=D.DEPARTMENT_ID
    inner join LOCATIONS L
on D.LOCATION_ID = L.LOCATION_ID;

  -- where is Kimberly?
select FIRST_NAME, LAST_NAME,DEPARTMENT_NAME, CITY
from EMPLOYEES E
         left join DEPARTMENTS D
                    on E.DEPARTMENT_ID=D.DEPARTMENT_ID
         left join LOCATIONS L
                    on D.LOCATION_ID = L.LOCATION_ID
order by FIRST_NAME;


 -- how many employees we have in each city
select city, count(*)
from EMPLOYEES E
         left join DEPARTMENTS D
                   on E.DEPARTMENT_ID=D.DEPARTMENT_ID
         left join LOCATIONS L
                   on D.LOCATION_ID = L.LOCATION_ID
group by CITY
order by 2;



--9.Display first_name,last_name and department_name,city,country_name for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city, country_name
from EMPLOYEES E join  DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
join LOCATIONS L
on D.LOCATION_ID = l.LOCATION_ID
join COUNTRIES C
on L.COUNTRY_ID = c.COUNTRY_ID;




select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME, CITY, COUNTRY_NAME
from EMPLOYEES E
    inner join DEPARTMENTS D
     on D.DEPARTMENT_ID = E. DEPARTMENT_ID
      inner join LOCATIONS L
        on D.LOCATION_ID = L.LOCATION_ID
          inner join COUNTRIES C
            on L.COUNTRY_ID = C.COUNTRY_ID;

--how many employees we have in each country?
select count(*), COUNTRY_NAME
              from EMPLOYEES E
              inner join DEPARTMENTS D
               on D.DEPARTMENT_ID = E. DEPARTMENT_ID
               inner join LOCATIONS L
                on D.LOCATION_ID = L.LOCATION_ID
                    inner join COUNTRIES C
                on L.COUNTRY_ID = C.COUNTRY_ID
                 group by COUNTRY_NAME;




select COUNTRY_NAME, count(*)
from EMPLOYEES E
         inner join DEPARTMENTS D
                    on D.DEPARTMENT_ID = E. DEPARTMENT_ID
         inner join LOCATIONS L
                    on D.LOCATION_ID = L.LOCATION_ID
         inner join COUNTRIES C
                    on L.COUNTRY_ID = C.COUNTRY_ID
group by COUNTRY_NAME
having count(*)>20
order by 2;

--task
--select patient_id, first_name, last_name
--from patients P inner join admissions A
--on P.patient_id = A.patient_id
--where A.diagnosis = 'Dementia';








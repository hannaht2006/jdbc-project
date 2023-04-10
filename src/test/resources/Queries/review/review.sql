select * from EMPLOYEES;

select * from(select  * from EMPLOYEES order by SALARY desc)
where ROWNUM <=10;

--
select FIRST_NAME, DEPARTMENT_NAME, e.DEPARTMENT_ID, d.DEPARTMENT_ID
from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--Left join
select  FIRST_NAME, LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left outer join DEPARTMENTS d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
order by DEPARTMENT_NAME desc ;

--self join
select worker.FIRST_NAME, worker.LAST_NAME, manager.FIRST_NAME, manager.LAST_NAME
from EMPLOYEES  worker
inner join employees manager
on worker.MANAGER_ID =manager.EMPLOYEE_ID
order by worker.FIRST_NAME;
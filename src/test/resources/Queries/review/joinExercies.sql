select * from EMPLOYEES;

--selfJoin:
--find manager of Neena:
select FIRST_NAME, LAST_NAME from EMPLOYEES
where EMPLOYEE_ID=(select MANAGER_ID from EMPLOYEES
                                     where FIRST_NAME='Neena');

select workers.FIRST_NAME, workers.LAST_NAME, workers.salary, managers.salary, managers.FIRST_NAME, managers.LAST_NAME
from EMPLOYEES workers left join EMPLOYEES managers
on workers.MANAGER_ID=managers.employee_id
order by workers.FIRST_NAME;



--given the employee table, who earn more than their managers
select workers.FIRST_NAME, workers.LAST_NAME, workers.salary, managers.salary, managers.FIRST_NAME, managers.LAST_NAME
from EMPLOYEES workers left join EMPLOYEES managers
                                 on workers.MANAGER_ID=managers.employee_id
where workers.SALARY>managers.SALARY;

--union
select NAMES, SALARY from TESTERS
union
select NAMES, SALARY from DEVELOPERS;

select NAMES, SALARY from TESTERS
union all
select NAMES, SALARY from DEVELOPERS
order by NAMES;



select * from EMPLOYEES;

-- display manager name of 'Neena'
/*
 self join
 */

select MANAGER_ID from EMPLOYEES
where  FIRST_NAME = 'Neena';





select FIRST_NAME, LAST_NAME from EMPLOYEES
where EMPLOYEE_ID = (select MANAGER_ID from EMPLOYEES
                 where FIRST_NAME = 'Neena');

--what's the purpose of that? table already
select FIRST_NAME, LAST_NAME, MANAGER_ID, EMPLOYEE_ID
from EMPLOYEES;

select worker.FIRST_NAME, worker.LAST_NAME, manager.FIRST_NAME, manager.LAST_NAME
from EMPLOYEES worker inner join EMPLOYEES manager
on worker.MANAGER_ID = manager.EMPLOYEE_ID;

-- to see Steven
select worker.FIRST_NAME, worker.LAST_NAME, manager.FIRST_NAME, manager.LAST_NAME
from EMPLOYEES worker left join EMPLOYEES manager
    on worker.MANAGER_ID = manager.EMPLOYEE_ID
order by worker.FIRST_NAME;




select * from EMPLOYEES;

select max(SALARY)
from EMPLOYEES;
--if we know max salary, can we find who is getting the max salary?
select * from EMPLOYEES
where SALARY = 24000; -->it is HARDCODED

--IF the Steven king salary changes we can not find person who is getting max salary
--make the code dynamic
select * from EMPLOYEES
where SALARY=(select max(SALARY) from EMPLOYEES);

--who has min salary
select * from EMPLOYEES
where SALARY=(select min(SALARY)from EMPLOYEES);


-- get second highest salary (query inside query and inside query)
select * from EMPLOYEES
where SALARY= (select max(SALARY) from EMPLOYEES
where SALARY<(select max(SALARY)from EMPLOYEES)) ;

--explanation:
--find max:
select max(SALARY)from EMPLOYEES;

--second max:
select max(SALARY)from EMPLOYEES
         where SALARY < (select max(SALARY)from EMPLOYEES) ;

--put all together who have second max:
     --we use 3 queries to find the requirement:
        --1- (select max(SALARY)from EMPLOYEES)

        --2-  (select max(SALARY) from EMPLOYEES
--                where SALARY<(select max(SALARY)from EMPLOYEES))

        --3- select * from EMPLOYEES
--             where SALARY= (select max(SALARY) from EMPLOYEES
--                where SALARY<(select max(SALARY)from EMPLOYEES)) ;

select * from EMPLOYEES
where SALARY= (select max(SALARY) from EMPLOYEES
               where SALARY<(select max(SALARY)from EMPLOYEES)) ;

--find who is getting more than average
--find average salary
select round(avg(SALARY)) from EMPLOYEES;

--find who is getting more than average dynamic
select * from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES);

-- display all info who is getting second minimum salary

select * from employee where salary = (select MIN(salary) from employee
    where salary>(select MIN(Salary) from employees));

select min(SALARY) from EMPLOYEES;

select min(SALARY) from EMPLOYEES
where SALARY > (select min(SALARY) from EMPLOYEES);

select * from EMPLOYEES
where SALARY =(select min(SALARY) from EMPLOYEES
               where SALARY > (select min(SALARY) from EMPLOYEES));



declare
i number;
    begin
    i:=1;
         loop
        dmbs_output.put_line(i);
            i:=i+1;
                exit when i =5;
                    end loop;
                        end;




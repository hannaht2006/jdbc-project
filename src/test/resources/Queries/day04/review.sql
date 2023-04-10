select * from EMPLOYEES;

--find 3rd min salary from employees table
  -- first sort salaries in desc without duplicate

select distinct SALARY from EMPLOYEES
order by SALARY desc;

  --third max salary
  select min(SALARY)
  from(select distinct SALARY from EMPLOYEES
                order by SALARY desc)
where rownum <4;
  --info who is getting 3rd highest salary
  select * from EMPLOYEES
      where SALARY=(select min(SALARY) from(select distinct SALARY from EMPLOYEES
                                         order by SALARY desc)
                                    where rownum<4);
--find 3rd min salary from employees table (no include duplicate)
-- first sort salaries in asc without duplicate

select distinct SALARY from EMPLOYEES
order by SALARY;
-- third min salary
select max(SALARY) from (select distinct SALARY from EMPLOYEES
               order by SALARY)
where ROWNUM <4;

--info who getting

select * from EMPLOYEES
where SALARY = (select max(SALARY) from (select distinct SALARY from EMPLOYEES
                                         order by SALARY)
                where ROWNUM <4);



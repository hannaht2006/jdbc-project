select * from EMPLOYEES;
/*
 it limits rows based on provided number from top down
 -it is getting data before ordered them based on salary and cut the list from
 the line 6 then try to order them between first 5 rows
 - that's why we will get not corrected list
 */

select * from EMPLOYEES
where rownum <11;

--display all info from employees who is 5 highest salary

select * from EMPLOYEES
where rownum <6
order by SALARY desc;--> give not correct list

--correct list
select * from (select * from EMPLOYEES
                        order by SALARY desc)
where rownum <6;

--display who is getting 5th highest salary

   --1 display all unique different salary in desc order (sort)
    select distinct SALARY from EMPLOYEES
      order by SALARY desc ;

   --2 display all 5 highest salary
select * from (select distinct SALARY from EMPLOYEES
               order by SALARY desc)
where rownum<6 ;

 --IQ --the 5th highest
  select min(SALARY) from (select distinct SALARY from EMPLOYEES
  order by SALARY desc)
  where rownum<6 ;

-- all info that who is the 5th highest salary:
select * from EMPLOYEES
    where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES
                                             order by SALARY desc)
                    where rownum<6 );

  -- the 49th highest
select min(SALARY) from (select distinct SALARY from EMPLOYEES
                         order by SALARY desc)
where rownum<50 ;

-- who id salary at 49th highest salary: 4 people
select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES
                                         order by SALARY desc)
                where rownum<50 );


select distinct SALARY from EMPLOYEES
order by SALARY ;

--HW: display all info who is getting 3th lowest salary
select distinct SALARY from EMPLOYEES
order by SALARY ;

select max(SALARY) from (select distinct SALARY from EMPLOYEES
                         order by SALARY);

select * from EMPLOYEES
where SALARY =(select max(SALARY) from (select distinct SALARY from EMPLOYEES
                                        order by SALARY)
                                  where rownum<4);


select * from JOBS;

-- Task 1:display any job title information endswith manager from jobs table

select * from JOBS
where JOB_TITLE like '%Manager';


-- Task 2:display all employees except firstname is starting with D
select * from EMPLOYEES
where FIRST_NAME not like 'D%';


select * from EMPLOYEES
where FIRST_NAME != 'D%'
order by FIRST_NAME;


-- Task 3:display all employees except firstname is starting with D and has 5 letter

select count(*) from EMPLOYEES
where FIRST_NAME != 'D____'
order by  LAST_NAME;


-- Task 4:display all Countries where Region_ID is 1 and Country_Name is not Belgium
select * from COUNTRIES
where REGION_ID =1 and COUNTRY_NAME not like 'Belgium';

select * from COUNTRIES
where REGION_ID =1 and COUNTRY_NAME != 'Belgium';

select * from COUNTRIES
where REGION_ID =1 and COUNTRY_NAME <> 'Belgium';

select * from COUNTRIES
where REGION_ID =1 and COUNTRY_NAME not in('Belgium') ;



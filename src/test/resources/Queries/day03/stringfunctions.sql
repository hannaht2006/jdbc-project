select * from EMPLOYEES;

--add email to @gmail domain for all employees and show column name as full_email
select EMAIL||'@gmail.com' as full_email
from EMPLOYEES;


--CONCAT(value1, value2)

select concat(EMAIL, '@gmail.com') as full_email
from EMPLOYEES;


select concat('cydeo', concat(EMAIL, '@gmail.com')) as full_email
from EMPLOYEES;

--UPPER(varchar)
select upper(EMAIL||'@gmail.com') as full_email
from EMPLOYEES;

--LOWER(varchar)
select lower(EMAIL||'@gmail.com') as full_email
from EMPLOYEES;

--INICAP(varchar): make first letter uppercase
select INITCAP(EMAIL||'@gmail.com') as full_email
from EMPLOYEES;

--LENGTH()
select EMAIL, length(EMAIL||'@gmail.com') as Email_length
from EMPLOYEES
order by Email_length;

-- display all employees where firstname length = 6
select FIRST_NAME, length(FIRST_NAME) as first_name_length
from EMPLOYEES
where length(FIRST_NAME)=6
order by FIRST_NAME;

--other solution
select FIRST_NAME , length(FIRST_NAME) as first_name_length
from EMPLOYEES
where length(FIRST_NAME) like 6
order by FIRST_NAME;

select  count(*)
from EMPLOYEES
where FIRST_NAME like '------';


--SUBSTR(columnName, beginningIndex, numberOfChar)
/*
 - if beginning index = 0, it is treated as 1
 - if beginning index negative, it will start from backward
 - if we don't specify number of char, it will work still the end


 */
--display initial first name and lastname
select SUBSTR(FIRST_NAME,0,1) ||'.'||substr(LAST_NAME, 0, 1)||'.'
as initials
from EMPLOYEES;


select SUBSTR(FIRST_NAME,1,1) ||'.'||substr(LAST_NAME, 1, 1)||'.'
           as initials
from EMPLOYEES;


-- if beginning index negative, it will start from backward
select FIRST_NAME, SUBSTR(FIRST_NAME,-3,2)
from EMPLOYEES;

-- if we don't specify number of char, it will work still the end
select FIRST_NAME, SUBSTR(FIRST_NAME,-3)
from EMPLOYEES;

--
select FIRST_NAME, substr(FIRST_NAME,0,1) from EMPLOYEES;











































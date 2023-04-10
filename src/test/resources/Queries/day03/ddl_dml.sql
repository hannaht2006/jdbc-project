select * from EMPLOYEES;

select * from employees;

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
--- CREATE TABLE ----
create table scrumteam(

    empid Integer PRIMARY KEY,
    firstname varchar(30) not null,
    jobtitle varchar(20) not null,
    age integer,
    salary integer

);

select * from scrumteam;



/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/
select * from scrumteam;

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (1,'Mike','Tester',34,120000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (2,'John','Tester',32,130000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (3,'John','Developer',37,160000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (4,'Dembe','Developer',42,200000);


-- to push changes into database we need to use commit or commit work
commit;


/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/
select * from scrumteam;

UPDATE scrumteam
SET salary=salary+5000;

UPDATE scrumteam
SET salary=salary+20000
WHERE JOBTITLE='Tester';

UPDATE scrumteam
SET salary=salary+10000
WHERE age>40;

commit;
select * from SCRUMTEAM;
/*
 DELETE FROM tableName
 WHERE condition;
 */

 delete from SCRUMTEAM
where empid = 1;

delete from scrumteam
where jobtitle ='Developer' and age >40;

commit ;

--ALTER
--ADD NEW COLUMN

alter table scrumteam
add gender varchar(10);

--update employee 2  gender to male
update scrumteam
set gender = 'male'
where empid=2;

-- check (gender in ('male', 'female')
--RENAME COLUMN
alter table scrumteam
rename column salary to annual_salary;

--drop column
alter table scrumteam
drop column GENDER;

select * from scrumteam;

--RENAME TO ---> CHANGE TABLENAME
alter table scrumteam
rename to agileTeam;
select  * from agileTeam;

commit ;

--TRUNCATE : clear table from data --> empty table

truncate table agileTeam;

drop table agileTeam;

commit;
/*
 IQ : what is different between truncate and drop:
  -truncate : will delete table content
  -drop : will delete whole table including table content
 */

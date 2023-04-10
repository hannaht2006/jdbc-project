select * from EMPLOYEES;

create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);

select * from DEVELOPERS;

create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);
select  * from TESTERS;

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;
/*
 UNION
 -To merge more then one table vertically
 -Remove dups
 - Make an order as default asc (sort order)

 */

 select * from DEVELOPERS
union
select * from TESTERS;

--unique names
select names from DEVELOPERS
union
select names from TESTERS;

--unique names, desc order
select names from DEVELOPERS
union
select names from TESTERS
order by 1 desc ;

//*

 UNION ALL

 - Dont Remove DUPS
 - Dont sort the results
 */

select * from developers
union all
select * from testers;


select names from developers
union all
select names from testers;

/*
 MINUS
 -remove same data from first table and give result from ist table

 */

select names from developers
minus
select names from testers;

select * from developers
minus
select * from testers;


select * from TESTERS
minus
select * from DEVELOPERS;


select names from TESTERS
minus
select names from DEVELOPERS;

/*
 intersect

 */

select names from TESTERS
INTERSECT
select names from DEVELOPERS;

select * from developers
intersect
select * from testers;


select * from TESTERS
intersect
select * from DEVELOPERS;
















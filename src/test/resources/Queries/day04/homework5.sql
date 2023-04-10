select * from EMPLOYEES;

create table employee(
                         employeeID integer  primary key,
                         firstName varchar(15) not null,
                         lastName varchar(15),
                         city varchar(20),
                         state varchar(15)
);

insert into employee(employeeID, firstName, lastName, city, state)
VALUES (10330, 'John', 'john', 'NY', 'NY');

insert into employee(employeeID, firstName, lastName, city, state)
VALUES (10449, 'Sarah', 'Lebat', 'Melbourne', 'Bourke');

insert into employee(employeeID, firstName, lastName, city, state)
VALUES (11012, 'Jon', 'Dallas', 'NY', 'NY');

insert into employee(employeeID, firstName, lastName, city, state)
VALUES (11013, 'Gheorghe', 'Honey', 'NY', 'NY');

insert into employee(employeeID, firstName, lastName, city, state)
VALUES (11014, 'Anton', 'Savar', 'NY', 'NY');

select * from employee;

create table payments(
employeeID integer references employee(employeeID),
salaryDate varchar(12) not null,
monthID integer not null,
value$ integer
);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10330, 'june', 6, 128);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10330, 'july', 7, 158);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10330, 'August', 8, 133);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10330, 'September', 9, 120);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10330, 'October', 10, 188);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10330, 'November', 11, 160);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10330, 'December', 12, 105);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10449, 'September', 9, 150);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10449, 'October', 10, 158);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10449, 'November', 11, 160);

insert into payments(employeeID, salaryDate, monthID, value$)
VALUES (10449, 'December', 12, 180);

select * from payments;

commit ;
--write an SQL query to display all employees having their name stating with the letter 'J'

select firstName, lastName
from employee
where firstName like 'J%';

-- write an SQL query to display the total amount earned by each employee

select firstName, lastName,sum(value$)
from payments P inner join employee E
on P.employeeID = E.employeeID
group by firstName, lastName;









select * from employees;

CREATE TABLE customers (
    Customer_id int not null primary key ,
    first_name varchar(50) not null,
    last_name varchar(20) not null,
    age int ,
    job_title varchar(25),
    salary int
);

select * from customers;

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (001, 'Hannah', 'Ton', 50, 'engineer', 45000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (002, 'Chris', 'Huynh', 52, 'engineer', 95000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (003, 'Kristina', 'Ravilyn', 30, 'tester', 85000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (004, 'Sabrina', 'Sabolova', 25, 'admin', 35000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (005, 'Melody', 'Karasota', 35, 'tester', 75000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (006, 'Katya', 'Larson', 37, 'tester', 85000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (007, 'Barrie', 'Peterson', 67, 'Manager', 150000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (008, 'Stephen', 'Boss', 37, 'Recruiter', 60000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (009, 'Bety', 'Hall', 37, 'Developer', 100000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (010, 'Amy', 'Truong', 25, 'Developer', 110000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (011, 'Tay', 'Satoong', 40, 'tester', 70000);

insert into customers (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (012, 'Walid', 'kosovic', 37, 'tester', 80000);

commit ;


select * from customers;

CREATE TABLE customersDup (
                           Customer_id int not null primary key ,
                           first_name varchar(50) not null,
                           last_name varchar(20) not null,
                           age int ,
                           job_title varchar(25),
                           salary int
);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (001, 'Hannah', 'Ton', 50, 'engineer', 45000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (002, 'Chris', 'Huynh', 52, 'engineer', 95000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (003, 'Kristina', 'Ravilyn', 30, 'tester', 85000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (004, 'Sabrina', 'Sabolova', 25, 'admin', 35000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (005, 'Melody', 'Karasota', 35, 'tester', 75000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (006, 'Katya', 'Larson', 37, 'tester', 85000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (007, 'Barrie', 'Peterson', 67, 'Manager', 150000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (008, 'Stephen', 'Boss', 37, 'Recruiter', 60000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (009, 'Bety', 'Hall', 37, 'Developer', 100000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (010, 'Amy', 'Truong', 25, 'Developer', 110000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (011, 'Tay', 'Satoong', 40, 'tester', 70000);

insert into customersDup (Customer_id, first_name,last_name,age,job_title,salary)
VALUES (012, 'Walid', 'kosovic', 37, 'tester', 80000);

commit ;

select * from customers
minus
select * from CUSTOMERSDUP;

select count(first_name) as total_customers from customers;

select  salary from CUSTOMERSDUP;

update CUSTOMERSDUP
set salary = salary +50000
where salary = 150000;

commit ;

select * from CUSTOMERSDUP;

select
    case
        when customer_salary_count = 0
            then 'PASS - customer_salary_validation'
        else 'FAIL - customer_salary_validation'
    end as test_case_1
    from (select count(*) as customer_salary_count
          from (select customer_id, first_name, last_name, age, job_title
                from customers
                where salary = 150000
                minus
                select customer_id, first_name, last_name, age, job_title
                from CUSTOMERSDUP
                where salary = 200000
                )
          )
;








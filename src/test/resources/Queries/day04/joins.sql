select * from EMPLOYEES;
/*
 -it gives only matching portion of table
 -the order table does not matter

 */

select * from ADDRESS;
select * from CUSTOMER;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from ADDRESS inner join CUSTOMER
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

-- Q: what if I want to see customer.address_id info too: have to clarify "customer.address_id"
select FIRST_NAME, LAST_NAME, customer.ADDRESS_ID, ADDRESS, PHONE
from ADDRESS inner join CUSTOMER
     on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--or
select FIRST_NAME, LAST_NAME, customer.ADDRESS_ID,ADDRESS.ADDRESS_ID ,ADDRESS, PHONE
from ADDRESS inner join CUSTOMER
      on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Q: do i need to type table name always:
--ALIASES
  --Table Aliases
     --Customer -->C
     --Employees ---> E
     --Address -->A

--replace address by A, customer by B to make short to use table name, it is temporary for only this query
select FIRST_NAME, LAST_NAME, C.ADDRESS_ID,A.ADDRESS_ID ,ADDRESS, PHONE
from ADDRESS A inner join CUSTOMER C
          on C.ADDRESS_ID = A.ADDRESS_ID;

/*
 left outer join / LEFT JOIN
 --it will give data matching part + unique for LEFT table
 --the order of table is important

 */
select  * from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER C left outer join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from ADDRESS A  left join CUSTOMER C
     on A.ADDRESS_ID = C.ADDRESS_ID ;

/*
 RIGHT OUTER JOIN / RIGHT JOIN
 --it will give data matching part + unique for RIGHT table
 --the order of table is important
 */

SELECT * FROM CUSTOMER C RIGHT outer JOIN ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

SELECT FIRST_NAME, LAST_NAME, ADDRESS, PHONE
FROM CUSTOMER C RIGHT outer JOIN ADDRESS A
 on C.ADDRESS_ID = A.ADDRESS_ID;

SELECT FIRST_NAME, LAST_NAME, ADDRESS, PHONE
FROM ADDRESS A  RIGHT JOIN CUSTOMER C
on A.ADDRESS_ID =C.ADDRESS_ID ;

/*
 FULL OUTER JOIN
 -- it will give all matching + unique LEFT + unique RIGHT
 --the order of table does not matter
 */

SELECT FIRST_NAME, LAST_NAME, ADDRESS, PHONE
FROM ADDRESS A  full join CUSTOMER C
on A.ADDRESS_ID =C.ADDRESS_ID;

/*
 LEFT OUTER with WHERE
 --get me unique part from left table

 note : if there is a customer with C.address_ID is 6, there is no matching data from address table
 so it will assign as value for address.address_id as null

 that's why we are checking address.address_ID is NULL to make get only
 unique data from the left side
 */

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, PHONE
from CUSTOMER left outer join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null;












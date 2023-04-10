 select * from books;
select count(*) from books;

select * from book_borrow;

select count(*) from book_borrow
where is_returned = 0;

select * from users;

select  count(full_name) from users;
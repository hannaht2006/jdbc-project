select * from books;

select id, book_category_id
from books;

select id from book_categories;

-- Display book name and related bookCategory name from library DB
select books.name, book_categories.name
from books inner join book_categories
on books.book_category_id = book_categories.id;


-- Find me first 5 highest book categories based on book count
select book_categories.name, count(*) from books
   inner join book_categories
   on books.book_category_id = book_categories.id
   group by book_categories.name
   order by count(*)desc
   limit 5;


-- Find me how many book we have in each category_id

select count(*) as book_quantity, book_category_id from books
group by book_category_id;


-- Find me how many book we have in each category_name


select book_categories.name, count(*) from books
          inner join book_categories
          on books.book_category_id = book_categories.id
          group by book_categories.name
          order by count(*)desc
          limit 5;





-- Find me first 5 highest book categories_Id based on book count
select count(*), book_category_id from books
group by book_category_id
order by count(*)desc
limit 5;

/*
 Scenario: Verify the common book genre that’s being borrowed
    Given Establish the database connection
    When I execute a query to find the most popular book genre
    Then verify "Action and Adventure" is the most popular book genre.

Note: Since most popular genre is dynamic, students need to check this part from the DB.

Query: select bc.name,count(*) from book_borrow bb
            inner join books b on bb.book_id = b.id
            inner join book_categories bc on b.book_category_id=bc.id
            group by name
            order by 2 desc;
 */




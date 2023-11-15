SELECT first_name, last_name, author_id
FROM authors
WHERE NOT author_id > 3
   OR author_id = 1
ORDER BY last_name ASC;

SELECT first_name, last_name, author_id
FROM authors
WHERE last_name in ('Smith', 'Brown');

SELECT COUNT(*)
FROM books
WHERE published_year > 2000;

SELECT avg(published_year) as published_year_avg
from books;

select sum(published_year) as published_year_sum
from books;

select min(published_year) as published_year_min
from books;


select max(published_year) as published_year_max
from books;

SELECT book_id, COUNT(*) as loan_count
FROM book_loans
WHERE book_id > 2
GROUP BY book_id
HAVING COUNT(*) >= 2;

SELECT ce.enrollment_id,
       s.student_name,
       c.course_name
FROM course_enrollments ce
         JOIN
     students s ON ce.student_id = s.student_id
         JOIN
     courses c ON ce.course_id = c.course_id;

SELECT books.book_id,
       books.title,
       authors.first_name,
       authors.last_name
FROM books
         INNER JOIN authors ON books.author_id = authors.author_id;

ALTER TABLE books
    ALTER COLUMN author_id DROP NOT NULL;

SELECT books.book_id,
       books.title,
       authors.first_name,
       authors.last_name
FROM authors
         LEFT JOIN books ON books.author_id = authors.author_id;

SELECT books.book_id,
       books.title,
       authors.first_name,
       authors.last_name
FROM books
         RIGHT JOIN authors ON books.author_id = authors.author_id;

SELECT books.book_id,
       books.title,
       authors.first_name,
       authors.last_name
FROM books
         FULL JOIN authors ON books.author_id = authors.author_id;

SELECT books.title,
       genres.genre_name
FROM books
         JOIN
     genres ON books.genre_id = genres.genre_id
WHERE books.available = true;

SELECT books.title,
       authors.first_name || ' ' || authors.last_name AS author,
       genres.genre_name,
       book_loans.loan_date,
       book_loans.return_date
FROM books
         JOIN
     authors ON books.author_id = authors.author_id
         JOIN
     genres ON books.genre_id = genres.genre_id
         LEFT JOIN
     book_loans ON books.book_id = book_loans.book_id;

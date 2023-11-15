INSERT INTO authors (first_name, last_name)
VALUES ('John', 'Smith'),
       ('Jane', 'Doe'),
       ('David', 'Johnson'),
       ('Emily', 'Williams'),
       ('Michael', 'Brown');

INSERT INTO genres (genre_name)
VALUES ('Science Fiction'),
       ('Mystery'),
       ('Romance'),
       ('Fantasy'),
       ('Non-Fiction');

INSERT INTO books (title, author_id, genre_id, published_year, ISBN, available)
VALUES ('The Martian', 1, 1, 2011, '9780553418026', true),
       ('Gone Girl', 2, 2, 2012, '9780307588364', true),
       ('Pride and Prejudice', 3, 3, 1813, '9780141439518', true),
       ('Harry Potter and the Sorcerer''s Stone', 4, 4, 1997, '9780590353403', true),
       ('Sapiens: A Brief History of Humankind', 5, 5, 2011, '9780062316097', true),
       ('The Great Gatsby', 1, 2, 1925, '9780743273565', true),
       ('To Kill a Mockingbird', 2, 2, 1960, '9780061120084', true),
       ('1984', 3, 1, 1949, '9780451524935', true),
       ('The Hobbit', 4, 4, 1937, '9780547928227', true),
       ('The Catcher in the Rye', 5, 2, 1951, '9780241950425', true);


INSERT INTO book_loans (book_id, patron_name, loan_date, return_date)
VALUES (1, 'Alice Johnson', '2023-01-15', '2023-02-15'),
       (2, 'Bob Smith', '2023-02-20', '2023-03-20'),
       (3, 'Carla Brown', '2023-03-05', '2023-04-05'),
       (4, 'David Lee', '2023-04-10', '2023-05-10'),
       (5, 'Emily White', '2023-05-15', '2023-06-15'),
       (1, 'James Miller', '2023-06-20', '2023-07-20'),
       (2, 'Sophia Turner', '2023-07-05', '2023-08-05'),
       (5, 'Daniel Clark', '2023-08-10', '2023-09-10');

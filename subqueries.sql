SELECT title
from books
where book_id in
      (SELECT DISTINCT book_id
       from book_loans);

SELECT first_name || ' ' || last_name                                         AS author,
       (SELECT COUNT(*) from books where books.author_id = authors.author_id) AS
                                                                                 total_books
from authors;

SELECT author,
       AVG(published_year) as avg_published_year
FROM (SELECT a.first_name || ' ' || a.last_name AS author,
             b.published_year
      FROM authors a
               JOIN books b ON a.author_id = b.author_id) as author_books;

CREATE TABLE reader_profile
(
    reader_profile_id SERIAL PRIMARY KEY,
    email             VARCHAR(50) NOT NULL
);

CREATE TABLE reader_profile
(
    reader_profile_id SERIAL PRIMARY KEY,
    email             VARCHAR(50) NOT NULL
);

CREATE TABLE reader_preferences
(
    reader_preferences_id SERIAL PRIMARY KEY,
    genre                 VARCHAR(50),
    reader_profile_id     int unique,
    foreign key (reader_profile_id) references reader_profile (reader_profile_id)
);


CREATE TABLE reader_preferences
(
    reader_preferences_id INTEGER PRIMARY KEY REFERENCES reader_profile (reader_profile_id),
    genre                 VARCHAR(50)
);

insert into reader_profile (email)
values ('john@gmail.com'),
       ('tom@wp.pl');

insert into reader_preferences (reader_preferences_id, genre)
values (1, 'Drama')



CREATE TABLE courses
(
    course_id   INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE students
(
    student_id   INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL
);

CREATE TABLE course_enrollments
(
    enrollment_id SERIAL PRIMARY KEY,
    student_id    INT NOT NULL,
    course_id     INT NOT NULL,
    foreign key (course_id) REFERENCES courses (course_id),
    foreign key (student_id) REFERENCES students (student_id)
);

INSERT INTO courses (course_id, course_name)
VALUES (1, 'Mathematics'),
       (2, 'History'),
       (3, 'Computer Science');

INSERT INTO students (student_id, student_name)
VALUES (1, 'Alice Johnson'),
       (2, 'Bob Smith'),
       (3, 'Carla Brown');

INSERT INTO course_enrollments (student_id, course_id, enrollment_date)
VALUES (1, 1),
       (1, 2),
       (2, 2),
       (3, 3),
       (3, 1);

CREATE TABLE genres
(
    genre_id   serial PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE authors
(
    author_id  serial PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE books
(
    book_id        serial PRIMARY KEY,
    title          VARCHAR(255) NOT NULL,
    author_id      INT          NOT NULL,
    genre_id       INT          NOT NULL,
    published_year INT,
    ISBN           VARCHAR(13),
    available      BOOLEAN,
    FOREIGN KEY (author_id) REFERENCES authors (author_id),
    FOREIGN KEY (genre_id) REFERENCES genres (genre_id)
);

CREATE TABLE book_loans
(
    loan_id     serial PRIMARY KEY,
    book_id     INT          NOT NULL,
    patron_name VARCHAR(100) NOT NULL,
    loan_date   DATE         NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES books (book_id)
);


CREATE TABLE reader_profile
(
    reader_profile_id SERIAL PRIMARY KEY,
    email             VARCHAR(50) NOT NULL
);

CREATE TABLE reader_preferences
(
    reader_preferences_id INTEGER PRIMARY KEY REFERENCES reader_profile
        (reader_profile_id),
    genre                 VARCHAR(50)
);

insert into reader_profile (email)
values ('john@gmail.com'),
       ('tom@wp.pl');

insert into reader_preferences (reader_preferences_id, genre)
values (1, 'Drama')
    insert
into reader_preferences (reader_preferences_id, genre)
values (3, 'Drama')

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


INSERT INTO course_enrollments (student_id, course_id)
VALUES (1, 1),
       (1, 2),
       (2, 2),
       (3, 3),
       (3, 1);


SELECT ce.enrollment_id,
       s.student_name,
       c.course_name
FROM course_enrollments ce
         JOIN
     students s ON ce.student_id = s.student_id
         JOIN
     courses c ON ce.course_id = c.course_id;

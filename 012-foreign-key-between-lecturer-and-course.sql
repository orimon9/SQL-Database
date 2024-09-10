-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 012-foreign-key-between-lecturer-and-course.sql

-- Create LECTURER table
CREATE TABLE LECTURER (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    course INTEGER NOT NULL,
    FOREIGN KEY (course) REFERENCES COURSE(id)
);

-- Create COURSE table
CREATE TABLE COURSE (
    id INTEGER PRIMARY KEY NOT NULL UNIQUE,
    credits INTEGER NOT NULL,
    date_begin DATE NOT NULL,
    duration INTEGER NOT NULL,
    description VARCHAR(255) NOT NULL
);

-- Successful INSERTS
INSERT INTO COURSE (id, credits, date_begin, duration, description)
VALUES (1, 3, '2020-01-10', 9, 'Economy');

INSERT INTO LECTURER (id, name, course)
VALUES (1, 'Jane Doe', 1);

-- Failed INSERTS (violation of foreign key constraint)
INSERT INTO LECTURER (id, name, course)
VALUES (2, 'Jane Doe', 4);

-- End of file

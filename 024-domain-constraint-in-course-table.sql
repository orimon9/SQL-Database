-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 024-domain-constraint-in-course-table.sql

CREATE TABLE COURSE (
    id INT PRIMARY KEY,
    credits INT CHECK (credits BETWEEN 1 AND 30),
    date_begin DATE,
    duration INT CHECK (duration > 0),
    name VARCHAR(255)
);

-- Fail: violation of domain check constraint
INSERT INTO COURSE (id, credits, date_begin, duration, name)
VALUES (1, 35, '2022-01-01', 8, 'Computer Science');

-- Fail: violation of domain check constraint
INSERT INTO COURSE (id, credits, date_begin, duration, name)
VALUES (2, 10, '2022-01-01', 0, 'Mathematics');

-- End of file

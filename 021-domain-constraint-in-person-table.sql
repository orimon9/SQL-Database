-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 021-domain-constraint-in-person-table.sql

CREATE TABLE PERSON (
    id INT PRIMARY KEY,
    last VARCHAR(50),
    first VARCHAR(50),
    phone INT CHECK (LENGTH(number) > 5),
    city VARCHAR(50),
    address VARCHAR(255),
    dob DATE CHECK (YEAR(dob) > 1930)
);

-- Fail: violation of domain check constraint
INSERT INTO PERSON (id, last, first, phone, city, address, dob)
VALUES (1, 'Doe', 'John', 123, 'New York', '12th Street', '1920-01-01');

-- Fail: violation of domain check constraint
INSERT INTO PERSON (id, last, first, phone, city, address, dob)
VALUES (1, 'Doe', 'John', 12345, 'New York', '12th Street', '1920-01-01');

-- End of file

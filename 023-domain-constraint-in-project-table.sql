-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 023-domain-constraint-in-project-table.sql

CREATE TABLE PROJECT (
    id INT PRIMARY KEY,
    project_name VARCHAR(50) CHECK (LENGTH(project_name) > 5),
    manager_name VARCHAR(50) CHECK (LENGTH(manager_name) > 5),
    manager_phone VARCHAR(15),
    job_title VARCHAR(50) CHECK (job_title IN ('sales manager', 'office manager', 'facilities manager', 'business manager'))
);

-- Fail: violation of domain check constraint
INSERT INTO PROJECT (id, project_name, manager_name, manager_phone, job_title)
VALUES (1, 'ABC', 'John', '12345', 'IT Manager');

-- Fail: violation of domain check constraint
INSERT INTO PROJECT (id, project_name, manager_name, manager_phone, job_title)
VALUES (1, 'XYZ Project', 'Jane', '1234567890123456', 'Sales Executive');

-- End of file

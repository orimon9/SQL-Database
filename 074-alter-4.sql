-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 074-alter-4.sql

ALTER TABLE inventory
MODIFY COLUMN comment VARCHAR(255) DEFAULT 'No comment';

-- End of file

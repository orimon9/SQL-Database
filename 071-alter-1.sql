-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 071-alter-1.sql

ALTER TABLE inventory
MODIFY COLUMN item VARCHAR(255),
MODIFY COLUMN comment VARCHAR(255);

-- End of file

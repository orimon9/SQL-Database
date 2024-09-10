-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 033-index-phone.sql

CREATE UNIQUE INDEX phone__number_index ON PHONE (number);

-- Use the index
SELECT * FROM phone WHERE number = '+1 111 222 333';

-- End of file

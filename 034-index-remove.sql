-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 033-index-remove.sql

-- Remove all created indexes from the PERSON and PHONE tables
DROP INDEX users__first_index;
DROP INDEX users__last_index;
DROP INDEX phone__number_index;

-- End of file

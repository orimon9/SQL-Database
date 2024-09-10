-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 051-index-weather-1.sql

CREATE INDEX weather__time_of_reading_index ON WEATHER (time_of_reading);

-- End of file

-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 042-index-team-2.sql

CREATE INDEX team__owner_index ON team (owner);

-- Use the index.
SELECT * FROM team WHERE owner = 'owner1';

-- End of file

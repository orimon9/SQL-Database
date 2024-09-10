-- Author: O R Imon <or.imon@tuni.fi>
-- Date: 2023-11-27
-- File: 022-domain-constraint-in-product-table.sql

CREATE TABLE PRODUCT (
    id INT PRIMARY KEY,
    name VARCHAR(50) CHECK (LENGTH(name) > 4),
    description VARCHAR(255) CHECK (LENGTH(description) > 10),
    weight FLOAT CHECK (weight > 0),
    sell_price DECIMAL(10, 2) CHECK (sell_price > 0),
    net_price DECIMAL(10, 2) CHECK (net_price < sell_price)
);

-- Fail: violation of domain check constraint
INSERT INTO PRODUCT (id, name, description, weight, sell_price, net_price)
VALUES (1, 'Pen', 'A simple pen', -0.5, 1.99, 1.50);

-- Fail: violation of domain check constraint
INSERT INTO PRODUCT (id, name, description, weight, sell_price, net_price)
VALUES (1, 'Mouse', 'A computer mouse', 0.2, 0, 1.50);

-- End of file

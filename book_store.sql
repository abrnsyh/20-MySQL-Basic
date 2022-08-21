SHOW DATABASE;

CREATE DATABASE bookstore;

USE bookstore;

SHOW TABLE;

CREATE TABLE books (
  id int auto_increment PRIMARY KEY,
  author1 varchar(100) NOT NULL,
  author2 varchar(100), 
  author3 varchar(100),
  title varchar(100),
  description varchar(255),
  place_sell CHAR(3),
  stock int DEFAULT 0,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE books
ADD price int DEFAULT 0,
ADD status ENUM ('available', 'out of stock', 'limited'),
DROP COLUMN place_sell;
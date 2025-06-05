DROP SCHEMA IF EXISTS cardealership;

CREATE SCHEMA cardealership;

USE cardealership; --make it the default schema

CREATE TABLE cardealership.dealerships (
  dealership_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  address VARCHAR(50),
  phone VARCHAR(12),
  PRIMARY KEY (iddealership_id));

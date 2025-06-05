DROP SCHEMA IF EXISTS cardealership;

CREATE SCHEMA cardealership;

USE cardealership; -- make it the default schema

CREATE TABLE dealerships (
  dealership_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  address VARCHAR(50),
  phone VARCHAR(12),
  PRIMARY KEY (dealership_id));

CREATE TABLE vehicles (
  vehicle_id INT NOT NULL AUTO_INCREMENT,
  vin INT,
  make VARCHAR(25),
  model VARCHAR(25),
  year INT,
  color VARCHAR(25),
  PRIMARY KEY (vehicle_id));

CREATE TABLE inventory (
  inventory_id INT NOT NULL AUTO_INCREMENT,
  dealership_id INT,
  vin INT,
  PRIMARY KEY (inventory_id));

CREATE TABLE sales_contracts (
  sales_contract_id INT NOT NULL AUTO_INCREMENT,
  customer_name VARCHAR(255),
  dealership_id INT,
  vin INT,
  PRIMARY KEY (sales_contract_id));

  CREATE TABLE lease_contracts (
  lease_contract_id INT NOT NULL AUTO_INCREMENT,
  customer_name VARCHAR(255),
  dealership_id INT,
  vin INT,
  PRIMARY KEY (lease_contract_id));

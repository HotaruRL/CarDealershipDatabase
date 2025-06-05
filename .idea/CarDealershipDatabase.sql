DROP SCHEMA IF EXISTS cardealership;

create SCHEMA cardealership;

use cardealership; -- make it the default schema

create TABLE dealerships (
  dealership_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50),
  address VARCHAR(50),
  phone VARCHAR(12),
  PRIMARY KEY (dealership_id));

create TABLE vehicles (
  vin VARCHAR(17) UNIQUE,
  make VARCHAR(25),
  model VARCHAR(25),
  year INT,
  color VARCHAR(25),
  PRIMARY KEY (vin));

create TABLE inventory (
  inventory_id INT NOT NULL AUTO_INCREMENT,
  dealership_id INT,
  vin VARCHAR(17),
  PRIMARY KEY (inventory_id));

create TABLE sales_contracts (
  sales_contract_id INT NOT NULL AUTO_INCREMENT,
  customer_name VARCHAR(255),
  dealership_id INT,
  vin VARCHAR(17),
  date_of_sale DATE,
  sale_price DECIMAL(10,2),
  PRIMARY KEY (sales_contract_id));

  create TABLE lease_contracts (
  lease_contract_id INT NOT NULL AUTO_INCREMENT,
  customer_name VARCHAR(255),
  dealership_id INT,
  vin VARCHAR(17),
  lease_start_date DATE,
  lease_end_date DATE,
  monthly_payment DECIMAL(8,2),
  PRIMARY KEY (lease_contract_id));

-- insert sample data
INSERT INTO `dealerships` (`name`, `address`, `phone`) VALUES
('Summit Auto Group', '1200 Peakview Dr, Aspen', '303-555-0101'),
('Coastal Motors Inc.', '850 Ocean Blvd, Santa Monica', '310-555-0202'),
('Heartland Cars', '45 Agriculture Ln, Des Moines', '515-555-0303'),
('Urban Drive Dealership', '77 City Center Plaza, Chicago', '312-555-0404'),
('Desert Autos Direct', '1 Oasis Way, Phoenix', '602-555-0505');

INSERT INTO `vehicles` (`vin`, `make`, `model`, `year`, `color`) VALUES
('1HGCM82G9JA102345', 'Honda', 'CR-V', 2018, 'Lunar Silver'),
('JTDKN3DP2L5205678', 'Toyota', 'RAV4', 2020, 'Magnetic Gray'),
('1FMCU0GZ3NUA30987', 'Ford', 'Escape', 2022, 'Star White'),
('2G1BC5SM3K9401234', 'Chevrolet', 'Equinox', 2019, 'Mosaic Black'),
('JN8AS5MT1MW504567', 'Nissan', 'Rogue', 2021, 'Scarlet Ember'),
('1C4HJXCG5PW607890', 'Jeep', 'Cherokee', 2023, 'Velvet Red'),
('4S3BM9CC0N3701234', 'Subaru', 'Forester', 2020, 'Horizon Blue'),
('5NPE24AF6MH804567', 'Hyundai', 'Tucson', 2022, 'Shimmering Silver'),
('KNAUP3AD1P6907890', 'Kia', 'Sportage', 2019, 'Pacific Blue'),
('WBAJU5C53PZF10123', 'BMW', 'X1', 2023, 'Alpine White'),
('WDDEG4JB3NF204567', 'Mercedes-Benz', 'GLA', 2021, 'Polar White'),
('WAUZEGAF7NN307890', 'Audi', 'Q3', 2020, 'Mythos Black'),
('JTHM5CFS8P5401234', 'Lexus', 'UX 200', 2022, 'Caviar Black'),
('JM1KF2F39M1504567', 'Mazda', 'CX-30', 2019, 'Soul Red Crystal'),
('3VW4P7AT5PM607890', 'Volkswagen', 'Taos', 2023, 'Pure Gray'),
('1GKS1EKJ5JR701234', 'Cadillac', 'XT4', 2020, 'Stellar Black'),
('SALWR2SA9NH804567', 'Land Rover', 'Evoque', 2022, 'Fuji White'),
('YV4982SZ7P1907890', 'Volvo', 'XC40', 2021, 'Glacier Silver'),
('1HGCR1F75NA104589', 'Honda', 'Accord', 2022, 'Modern Steel'),
('JTDKARCD2P5206712', 'Toyota', 'Camry', 2023, 'Celestial Silver'),
('1FADP5EU3NUA30112', 'Ford', 'Fusion', 2020, 'Agate Black'),
('2G1BE5SK3K9402367', 'Chevrolet', 'Malibu', 2019, 'Summit White'),
('JN1AZ5AP1MW508890', 'Nissan', 'Altima', 2021, 'Super Black'),
('1C3BCABN5PW609911', 'Dodge', 'Charger', 2023, 'Pitch Black'),
('4S4BS9MC0N3702255', 'Subaru', 'Legacy', 2020, 'Crystal White'),
('5NPD74AF6MH807733', 'Hyundai', 'Sonata', 2022, 'Phantom Black'),
('KNAES3AD1P6901144', 'Kia', 'K5', 2019, 'Everlasting Silver'),
('WBA330C03PZF10336', 'BMW', '330i', 2023, 'Black Sapphire'),
('WDDSK4JB3NF209977', 'Mercedes-Benz', 'C300', 2021, 'Obsidian Black'),
('WAUFGECX7NN301188', 'Audi', 'A5 Sportback', 2020, 'Brilliant Black'),
('JTHBF1D28P5402299', 'Lexus', 'IS 300', 2022, 'Ultra White'),
('JM1BP2F39M1507711', 'Mazda', 'Mazda6', 2019, 'Machine Gray'),
('3VW1P7AU5PM609922', 'Volkswagen', 'Passat', 2023, 'Deep Black Pearl'),
('1HGFC2F5XMA109821', 'Honda', 'Civic Si', 2021, 'Aegean Blue'),
('JTDK20EC3P5201134', 'Toyota', 'GR86', 2023, 'Track bRed'),
('1FATP8FF3NUA30335', 'Ford', 'Mustang GT', 2022, 'Shadow Black'),
('2G1FB1R83K9408846', 'Chevrolet', 'Camaro SS', 2019, 'Red Hot'),
('JN1BS5CV1MW501157', 'Nissan', '370Z Nismo', 2020, 'Pearl White'),
('1C3ADCTN5PW603368', 'Dodge', 'Challenger R/T', 2023, 'Go Mango'),
('4S4BR9SC0N3708879', 'Subaru', 'BRZ Limited', 2021, 'WR Blue Pearl'),
('5NPH24AF6MH801190', 'Hyundai', 'Veloster N', 2022, 'Performance Blue'),
('KNAKG3AD1P6903312', 'Kia', 'Stinger GT-Line', 2019, 'Snow White Pearl'),
('WBS1J0C0XPZF10882', 'BMW', 'M240i', 2023, 'Brooklyn Grey'),
('WDDHF4JB3NF201133', 'Mercedes-Benz', 'CLA 250', 2020, 'Night Black'),
('WAUDXEC4XNN303344', 'Audi', 'S3', 2022, 'Turbo Blue');

INSERT INTO `inventory` (`dealership_id`, `vin`) VALUES
(1, '1HGCM82G9JA102345'), (2, 'JTDKN3DP2L5205678'), (3, '1FMCU0GZ3NUA30987'), (4, '2G1BC5SM3K9401234'), (5, 'JN8AS5MT1MW504567'),
(1, '1C4HJXCG5PW607890'), (2, '4S3BM9CC0N3701234'), (3, '5NPE24AF6MH804567'), (4, 'KNAUP3AD1P6907890'), (5, 'WBAJU5C53PZF10123'),
(1, 'WDDEG4JB3NF204567'), (2, 'WAUZEGAF7NN307890'), (3, 'JTHM5CFS8P5401234'), (4, 'JM1KF2F39M1504567'), (5, '3VW4P7AT5PM607890'),
(1, '1GKS1EKJ5JR701234'), (2, 'SALWR2SA9NH804567'), (3, 'YV4982SZ7P1907890'), (4, '1HGCR1F75NA104589'), (5, 'JTDKARCD2P5206712');

INSERT INTO `sales_contracts` (`customer_name`, `dealership_id`, `vin`, `date_of_sale`, `sale_price`) VALUES
('Michael Johnson', 1, '1FADP5EU3NUA30112', '2023-01-15', 27500.00),
('Linda Williams', 2, '2G1BE5SK3K9402367', '2023-02-20', 23800.50),
('David Brown', 3, 'JN1AZ5AP1MW508890', '2023-03-10', 25200.00),
('Patricia Jones', 4, '1C3BCABN5PW609911', '2023-04-05', 41500.75),
('Christopher Garcia', 5, '4S4BS9MC0N3702255', '2023-05-12', 26900.00),
('Jessica Miller', 1, '5NPD74AF6MH807733', '2023-06-18', 30300.00),
('Daniel Davis', 2, 'KNAES3AD1P6901144', '2023-07-22', 24600.25),
('Elizabeth Rodriguez', 3, 'WBA330C03PZF10336', '2023-08-30', 51500.00),
('Matthew Martinez', 4, 'WDDSK4JB3NF209977', '2023-09-14', 49400.00),
('Jennifer Hernandez', 5, 'WAUFGECX7NN301188', '2023-10-01', 53800.50),
('Anthony Lopez', 1, 'JTHBF1D28P5402299', '2023-10-15', 44200.00),
('Ashley Gonzalez', 2, 'JM1BP2F39M1507711', '2023-10-20', 28000.00),
('Joshua Wilson', 3, '3VW1P7AU5PM609922', '2023-11-01', 27500.00),
('Amanda Anderson', 4, '1HGFC2F5XMA109821', '2023-11-05', 29800.00),
('Kevin Thomas', 5, 'JTDK20EC3P5201134', '2023-11-12', 34500.00),
('Sarah Jackson', 1, '1FATP8FF3NUA30335', '2023-11-18', 47000.00),
('Brian White', 2, '2G1FB1R83K9408846', '2023-11-22', 45500.00),
('Nicole Harris', 3, 'JN1BS5CV1MW501157', '2023-12-01', 39000.00),
('Ryan Martin', 4, '1C3ADCTN5PW603368', '2023-12-05', 43000.00),
('Melissa Thompson', 5, '4S4BR9SC0N3708879', '2023-12-12', 33500.00);

INSERT INTO `lease_contracts` (`customer_name`, `dealership_id`, `vin`, `lease_start_date`, `lease_end_date`, `monthly_payment`) VALUES
('Jason Garcia', 1, '5NPH24AF6MH801190', '2024-01-01', '2027-01-01', 350.00),
('Kimberly Martinez', 2, 'KNAKG3AD1P6903312', '2024-01-15', '2027-01-15', 420.50),
('William Robinson', 3, 'WBS1J0C0XPZF10882', '2024-02-01', '2027-02-01', 680.00),
('Amy Clark', 4, 'WDDHF4JB3NF201133', '2024-02-10', '2027-02-10', 490.75),
('Justin Rodriguez', 5, 'WAUDXEC4XNN303344', '2024-03-05', '2027-03-05', 520.00),
('Angela Lewis', 1, '1HGCM82G9JA102345', '2024-03-20', '2027-03-20', 310.00), -- VIN was in inventory, now leased
('Brandon Lee', 2, 'JTDKN3DP2L5205678', '2024-04-01', '2027-04-01', 350.25), -- VIN was in inventory, now leased
('Heather Walker', 3, '1FMCU0GZ3NUA30987', '2024-04-15', '2027-04-15', 380.00), -- VIN was in inventory, now leased
('Adam Hall', 4, '2G1BC5SM3K9401234', '2024-05-01', '2027-05-01', 330.00), -- VIN was in inventory, now leased
('Rachel Allen', 5, 'JN8AS5MT1MW504567', '2024-05-10', '2027-05-10', 300.50), -- VIN was in inventory, now leased
('Samuel Young', 1, '1C4HJXCG5PW607890', '2024-06-01', '2027-06-01', 400.00),
('Michelle King', 2, '4S3BM9CC0N3701234', '2024-06-15', '2027-06-15', 360.00),
('Gregory Wright', 3, '5NPE24AF6MH804567', '2024-07-01', '2027-07-01', 315.00),
('Stephanie Scott', 4, 'KNAUP3AD1P6907890', '2024-07-10', '2027-07-10', 305.00),
('Frank Green', 5, 'WBAJU5C53PZF10123', '2024-08-05', '2027-08-05', 580.00),
('Rebecca Adams', 1, 'WDDEG4JB3NF204567', '2024-08-20', '2027-08-20', 470.00),
('Patrick Baker', 2, 'WAUZEGAF7NN307890', '2024-09-01', '2027-09-01', 510.00),
('Cynthia Nelson', 3, 'JTHM5CFS8P5401234', '2024-09-15', '2027-09-15', 440.00),
('Walter Carter', 4, 'JM1KF2F39M1504567', '2024-10-01', '2027-10-01', 325.00),
('Laura Mitchell', 5, '3VW4P7AT5PM607890', '2024-10-10', '2027-10-10', 295.00);
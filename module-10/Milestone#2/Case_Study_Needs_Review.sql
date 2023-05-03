drop database bacchuswinery;

CREATE SCHEMA `bacchuswinery`; 

-- Creates tables
CREATE TABLE `bacchuswinery`.`employee` (
  `Employee_id` INT NOT NULL,
  `Employee_first_name` CHAR(30) NULL,
  `Employee_last_name` CHAR(30) NULL,
  `Employee_dept_id` VARCHAR(45) NULL,
  `Employee_time` DECIMAL NULL,
  `Start_date` DATE NULL,
  `Term_date` DATE NULL,
  PRIMARY KEY (`Employee_id`));
  
CREATE TABLE `bacchuswinery`.`department` (
  `Department_id` INT NOT NULL,
  `Dept_name` CHAR(30) NULL,
  `Dept_head` CHAR(45) NULL,
  PRIMARY KEY (`Department_id`));
  
CREATE TABLE `bacchuswinery`.`winery` (
  `Wine_id` INT NOT NULL,
  `Wine_name` CHAR(30) NULL,
  `Wine_type` CHAR(30) NULL,
  `Distribution_id` VARCHAR(30) NULL,
  `Supplier_id`  VARCHAR(30),
  `Employee_id` VARCHAR(30),
  `Department_id` VARCHAR(30),
  `Total_sold` VARCHAR(45) NULL,
  PRIMARY KEY (`Wine_id`));

CREATE TABLE `bacchuswinery`.`distribution` (
  `Distribution_id` INT NOT NULL,
  `Distribution_name` CHAR(30) NULL,
  `Online_order_number` VARCHAR(45) NULL,
  `Tracking_number` VARCHAR(45) NULL,
  `Distribution_delivery_date` DATE NULL,
  `Order_date` DATE NULL,
  `Wine_id` VARCHAR(45) NULL, 
  `Amount_ordered` VARCHAR(45) NULL,
  PRIMARY KEY (`Distribution_id`));

CREATE TABLE `bacchuswinery`.`supplier` (
  `Supplier_id` INT NOT NULL,
  `Supplier_name` CHAR(45) NULL,
  `Supplier_inventory` CHAR(45),
  `Component_name` VARCHAR(45) NULL,
  `Supply_order_date` DATE NULL,
  `Supply_delivery_date` DATE NULL,
  `Expected_delivery_date` DATE NULL, 
  PRIMARY KEY (`Supplier_id`));
  


  
-- Inserts Rows into employee Table
  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (1, 'Janet', 'Collins', 1, 40, '2018-04-13', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (2, 'Roz', 'Murphy', 2, '40', '2016-06-20', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (3, 'Bob', 'Ulrich', 2, '32', '2021-11-10', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (4, 'Henry', 'Dole', 3, '40', '2018-07-07', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (5, 'Maria', 'Costanza', 4, '40', '2019-12-10', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (6, 'Joey', 'Gracie', 3, '24', '2022-07-01', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (7, 'Eveleen', 'Lemoine', 3, '24', '2022-07-07', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (8, 'Sully', 'Jake', 3, '24', '2022-07-14', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (9, 'Matty', 'Vale', 3, '24', '2022-07-21', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (10, 'Shanna', 'Houston', 3, '24', '2022-07-28', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (11, 'Trev', 'Rowena', 3, '24', '2022-08-4', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (12, 'Darla', 'Melba', 3, '24', '2022-08-11', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (13, 'Jed', 'Rosamond', 3, '24', '2022-08-18', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (14, 'Amos', 'Langston', 3, '24', '2022-08-25', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (15, 'Trisha', 'Suzie', 3, '24', '2022-09-01', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (16, 'Alecia', 'Brad', 3, '24', '2022-09-08', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (17, 'William', 'Babs', 3, '24', '2022-09-15', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (18, 'Martie', 'Ross', 3, '24', '2022-09-22', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (19, 'William', 'Babs', 3, '24', '2022-09-29', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (20, 'Freda', 'Gibson', 3, '24', '2022-10-06', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (21, 'Clive', 'Chet', 3, '24', '2022-10-13', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (22, 'Abram', 'Deacon', 3, '24', '2022-10-20', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (23, 'Ridge', 'Rosemarie', 3, '24', '2022-10-27', null);

  insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (24, 'Floyd', 'Eulalia', 3, '24', '2022-11-3', null);

 insert into bacchuswinery.employee (`Employee_id`, `Employee_first_name`, `Employee_last_name`, `Employee_dept_id`,
`Employee_time`, `Start_date`, `Term_date`)
value (25, 'Coy', 'Nora', 3, '24', '2022-11-10', null);

-- Inserts Rows into department Table
insert into bacchuswinery.department (`Department_id`, `Dept_name`, `Dept_head`)
value (1, 'Finance', 'Janet Collins');

insert into bacchuswinery.department (`Department_id`, `Dept_name`, `Dept_head`)
value (2, 'Marketing', 'Roz Murphy');

insert into bacchuswinery.department (`Department_id`, `Dept_name`, `Dept_head`)
value (3, 'Production', 'Henry Dole');

insert into bacchuswinery.department (`Department_id`, `Dept_name`, `Dept_head`)
value (4, 'Distribution', 'Maria Costanza');

-- Inserts Rows into distribution Table
insert into bacchuswinery.distribution (`Distribution_id`, `Distribution_name`, `Online_order_number`, `Tracking_number`, `Distribution_delivery_date`, `Order_date`,
`Wine_id`, `Amount_ordered`)
value (1, 'West Side Shipping', 123, 123456, '2023-6-10', '2023-5-1', 1, 50);

insert into bacchuswinery.distribution (`Distribution_id`, `Distribution_name`, `Online_order_number`, `Tracking_number`, `Distribution_delivery_date`, `Order_date`,
`Wine_id`, `Amount_ordered`)
value (2, 'East Side Shipping', 231, 234567, '2023-6-20', '2023-4-30', 2, 30);

insert into bacchuswinery.distribution (`Distribution_id`, `Distribution_name`, `Online_order_number`, `Tracking_number`, `Distribution_delivery_date`, `Order_date`,
`Wine_id`, `Amount_ordered`)
value (3, 'North Side Shipping', 312, 345678, '2023-7-19', '2023-5-22', 3, 25);

-- Inserts Rows into Supplier Table
insert into bacchuswinery.supplier (`Supplier_id`, `Supplier_name`, `Supplier_inventory`,
`Component_name`, `Supply_order_date`, `Supply_delivery_date`, `Expected_delivery_date`)
value (1, 'Vates Inc.', 500, 'Vates and Tubbing', '2023-5-25', '2023-6-30', '2023-6-30');

insert into bacchuswinery.supplier (`Supplier_id`, `Supplier_name`, `Supplier_inventory`,
`Component_name`, `Supply_order_date`, `Supply_delivery_date`, `Expected_delivery_date`)
value (2, 'Boxes Inc.', '1000', 'Labels and Boxes', '2023-5-15', '2023-5-28', '2023-5-29');

insert into bacchuswinery.supplier (`Supplier_id`, `Supplier_name`, `Supplier_inventory`,
`Component_name`, `Supply_order_date`, `Supply_delivery_date`, `Expected_delivery_date`)
value (3, 'Vates Inc.', '600', 'Bottles & Corks', '2023-5-1', '2023-5-15', '2023-5-16');

-- Inserts Rows into winery Table
insert into bacchuswinery.winery (`Wine_id`, `Wine_name`, `Wine_type`,
`Distribution_id`,`Supplier_id`, `Employee_id`, `Total_sold`)
value (1, 'Red Stuff', 'Merlot', 1, 2, 16, 3259);

insert into bacchuswinery.winery (`Wine_id`, `Wine_name`, `Wine_type`,
`Distribution_id`,`Supplier_id`, `Employee_id`, `Total_sold`)
value (2, 'Edgers Best', 'Cabernet', 2, 3, 11, 4257);

insert into bacchuswinery.winery (`Wine_id`, `Wine_name`, `Wine_type`,
`Distribution_id`,`Supplier_id`, `Employee_id`, `Total_sold`)
value (3, 'White Stuff', 'Chablis', 2, 1, 10, 4385);

insert into bacchuswinery.winery (`Wine_id`, `Wine_name`, `Wine_type`,
`Distribution_id`,`Supplier_id`, `Employee_id`, `Total_sold`)
value (4, 'Green Skin', 'Chardonnay', 2, 2, 20, 5204);


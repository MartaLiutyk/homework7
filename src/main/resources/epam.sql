DROP SCHEMA IF EXISTS `epam` ;
CREATE SCHEMA IF NOT EXISTS `epam` DEFAULT CHARACTER SET utf8 ;
USE `epam` ;

DROP TABLE IF EXISTS `epam`.`employee` ;


CREATE TABLE IF NOT EXISTS `department` (
 `dept_no` VARCHAR(2) NOT NULL ,
 `dept_name` VARCHAR(25) NOT NULL,
 `location` VARCHAR(255) NOT NULL,

 PRIMARY KEY (`dept_no`));

CREATE TABLE IF NOT EXISTS `project` (
 `project_no` VARCHAR(2) NOT NULL,
 `project_name` VARCHAR(25) NOT NULL,
 `budget` INT NOT NULL,

 PRIMARY KEY (`project_no`));

CREATE TABLE IF NOT EXISTS `employee` (
 `emp_no` INT NOT NULL ,
 `emp_fname` VARCHAR(255) NOT NULL,
 `emp_lname` VARCHAR(255) NOT NULL,
 `dept_no` VARCHAR(2) NOT NULL,
 PRIMARY KEY (`emp_no`),
 FOREIGN KEY (`dept_no`) REFERENCES department (`dept_no`));


CREATE TABLE IF NOT EXISTS `works_on` (
 `emp_no` INT NOT NULL,
 `project_no` VARCHAR(25) NOT NULL,
 `job` VARCHAR(255),
 `enter_date` DATETIME NOT NULL,
 FOREIGN KEY (`emp_no`) REFERENCES employee (`emp_no`),
 FOREIGN KEY (`project_no`) REFERENCES project (`project_no`));

 INSERT INTO `project`(project_no, project_name, budget)VALUES
 ('p1', 'Apollo', 120000),
 ('p2' ,'Gemini' , 95000),
 ('p3', 'Mercury', 186500);

INSERT INTO `department` (dept_no, dept_name, location) VALUES
('d1', 'research', 'Dallas'),
('d2', 'accounting', 'Seattle'),
('d3', 'marketing', 'Dallas');

INSERT INTO `employee` (emp_no, emp_fname, emp_lname, dept_no)VALUES
(25348, 'Matthew', 'Smith', 'd3'),
(10102, 'Ann', 'Jones', 'd3'),
(18316, 'John', 'Barrimore', 'd1'),
(29346, 'James', 'James', 'd2'),
(9031, 'Elsa', 'Bertoni', 'd2'),
(2581, 'Elke', 'Hansel', 'd2'),
(28559, 'Sybil', 'Moser', 'd1');

 INSERT INTO `works_on`(emp_no, project_no, job, enter_date) VALUES
(10102, 'p1', 'analyst' , '2006-10-01 00:00:00'),
(10102, 'p3', 'manager' , '2008-01-01 00:00:00'),
(25348, 'p2', 'clerk' , '2007-02-15 00:00:00'),
(18316, 'p2', null, '2007-06-01 00:00:00'),
(29346, 'p2', null , '2006-12-15 00:00:00'),
(2581, 'p3', 'analyst' , '2007-10-15 00:00:00'),
(9031, 'p1', 'manager' , '2007-04-15 00:00:00'),
(28559, 'p1', null , '2007-08-01 00:00:00'),
(28559, 'p2', 'clerk' , '2008-02-01 00:00:00'),
(9031, 'p3', 'clerk' , '2007-01-04 00:00:00'),
(29346, 'p1', 'clerk' , '2007-01-04 00:00:00');








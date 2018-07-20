DROP SCHEMA IF EXISTS `university` ;
CREATE SCHEMA IF NOT EXISTS `university` DEFAULT CHARACTER SET utf8 ;
USE `university` ;

DROP TABLE IF EXISTS `university`.`student` ;


CREATE TABLE IF NOT EXISTS `faculty` (
 `faculty_code` INT NOT NULL ,
 `faculty_name` VARCHAR(25) NOT NULL,
 `faculty_description` VARCHAR(255) NOT NULL,

 PRIMARY KEY (`faculty_code`));

CREATE TABLE IF NOT EXISTS `subject` (
 `subject_code` INT NOT NULL,
 `subject_name` VARCHAR(25) NOT NULL,
 `subject_description` VARCHAR(255) NOT NULL,

 PRIMARY KEY (`subject_code`));

CREATE TABLE IF NOT EXISTS `student` (
 `student_code` INT NOT NULL ,
 `student_fname` VARCHAR(255) NOT NULL,
 `student_lname` VARCHAR(255) NOT NULL,
 `sex` VARCHAR(10) NOT NULL,
 `date_of_birth` DATETIME NOT NULL,
 `parent_name` VARCHAR(255) NOT NULL,
  `adress` VARCHAR(255) NOT NULL,
  `phone_number` LONG NOT NULL ,
  `passport` VARCHAR(20) NOT NULL,
  `exam_book` VARCHAR(20) NOT NULL,
  `enter_date` DATETIME NOT NULL,
   `group` VARCHAR(4) NOT NULL,
    `faculty_code` INT NOT NULL ,

 PRIMARY KEY (`student_code`),
 FOREIGN KEY (`faculty_code`) REFERENCES faculty (`faculty_code`));


CREATE TABLE IF NOT EXISTS `exam` (
 `student_code` INT NOT NULL,
  `subject_code` INT NOT NULL,
 `mark` VARCHAR(1) NOT NULL,
 `exam_date` DATETIME NOT NULL,
 FOREIGN KEY (`student_code`) REFERENCES student (`student_code`),
 FOREIGN KEY (`subject_code`) REFERENCES subject (`subject_code`));

 INSERT INTO `subject`(subject_code, subject_name, subject_description)VALUES
 (1, 'Math', '1+1 = 2' ),
 (2 ,'English' , 'London is a capital of Great Britain'),
 (3, 'Ukrainian', 'Слава Україні!'),
 (4, 'History', '22/06 German army came inside our country');

INSERT INTO `faculty` (faculty_code, faculty_name, faculty_description) VALUES
(122, 'Computer science', 'Students study  how to write programs'),
(113, 'Internet of Things', 'Students study  how to write programs, to create robots and to work with hardware'),
(117, 'Cyber security', 'Students study  how protect programs from bad people');

INSERT INTO `student` (student_code, student_fname, student_lname, sex, date_of_birth,parent_name,
 adress,phone_number, passport, exam_book, enter_date, `group` , faculty_code)VALUES
(12345, 'Marta', 'Liutyk', 'fem', '1999-01-17 10:00:00', 'Taras', 'Kolomyiska16',
380967726547, 123456, 64321, '2016-07-01 00:00:00', 'IR21', 113),
(12366, 'Bohdan', 'Kopylchak', 'man', '1994-06-01 00:00:00', 'Volodymyr', 'Tychyny12',
380952345663, 876543, 12345, '2012-07-01 00:00:00', 'IR21', 117);

 INSERT INTO `exam`(student_code, subject_code, mark, exam_date) VALUES
(12345, 1, 'A' , '2018-06-01 00:00:00'),
(12345, 2, 'A' , '2018-06-02 00:00:00'),
(12345, 3, 'A' , '2018-06-15 00:00:00'),
(12366, 2, 'A', '2018-06-17 00:00:00'),
(12366, 3, 'B' , '2018-06-10 00:00:00'),
(12366, 4, 'A' , '2018-06-13 00:00:00');

SELECT * FROM exam
GROUP BY subject_code ;


CREATE DATABASE  IF NOT EXISTS `employee_directory`;
USE `employee_directory`;

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `employee` VALUES 
	  (1, 'Leslie', 'Andrews', 'leslie@luv2code.com'),
    (2, 'Emma', 'Baumgarten', 'emma@luv2code.com'),
    (3, 'Avani', 'Gupta', 'avani@luv2code.com'),
    (4, 'Yuri', 'Petrov', 'yuri@luv2code.com'),
    (5, 'Juan', 'Vega', 'juan@luv2code.com'),
    (6, 'Michael', 'Smith', 'michael@luv2code.com'),
    (7, 'Sophia', 'Johnson', 'sophia@luv2code.com'),
    (8, 'Ethan', 'Brown', 'ethan@luv2code.com'),
    (9, 'Isabella', 'Lee', 'isabella@luv2code.com'),
    (10, 'Mason', 'Garcia', 'mason@luv2code.com'),
    (11, 'Olivia', 'Miller', 'olivia@luv2code.com'),
    (12, 'Aiden', 'Martinez', 'aiden@luv2code.com'),
    (13, 'Emily', 'Davis', 'emily@luv2code.com'),
    (14, 'Elijah', 'Rodriguez', 'elijah@luv2code.com'),
    (15, 'Scarlett', 'Hernandez', 'scarlett@luv2code.com'),
    (16, 'Logan', 'Lopez', 'logan@luv2code.com'),
    (17, 'Avery', 'Gonzalez', 'avery@luv2code.com'),
    (18, 'Harper', 'Wilson', 'harper@luv2code.com'),
    (19, 'Liam', 'Taylor', 'liam@luv2code.com'),
    (20, 'Abigail', 'Clark', 'abigail@luv2code.com');


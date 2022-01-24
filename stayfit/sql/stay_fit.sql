CREATE DATABASE IF NOT EXISTS stay_fit;
USE stay_fit;
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user`(
	`username` VARCHAR(45) NOT NULL,
	`password` VARCHAR(45) NOT NULL,
	`first_name` VARCHAR(45) NOT NULL,
	`last_name` VARCHAR(45) NOT NULL,
	`email` VARCHAR(45) NOT NULL,
	`phone_number` VARCHAR(45) NOT NULL,
    PRIMARY KEY(`username`)
);

DROP TABLE IF EXISTS `trainer`;

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `video` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `trainer` VALUES 
	(1,'Sean','Chi','sean@gmail.com','Cycling','https://www.youtube.com/embed/g8PVuxzuoCA','I help people who lack the inspiration to stay motivated and reach their goals.'),
	(2,'Andy','Chi','andy@gmail.com','Swimming','https://www.youtube.com/embed/4fVFsbcXBkI','I help people who lack the inspiration to stay motivated and reach their goals.'),
	(3,'Roger','Chi','roger@gmail.com','Tennis','https://www.youtube.com/embed/fcN37TxBE_s','I help people who lack the inspiration to stay motivated and reach their goals.'),
    (4,'Kevin','Chi','sean@gmail.com','Yoga','https://www.youtube.com/embed/Co9CpHYl20M','I help people who lack the inspiration to stay motivated and reach their goals.'),
	(5,'James','Chi','andy@gmail.com','Badminton','https://www.youtube.com/embed/4fVFsbcXBkI','I help people who lack the inspiration to stay motivated and reach their goals.'),
	(6,'Mary','Chi','roger@gmail.com','Basketball','https://www.youtube.com/embed/4fVFsbcXBkI','I help people who lack the inspiration to stay motivated and reach their goals.');

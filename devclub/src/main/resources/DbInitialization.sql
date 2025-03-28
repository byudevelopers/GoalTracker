DROP SCHEMA IF EXISTS `goaltracker`;

CREATE SCHEMA `goaltracker`;

USE `goaltracker`;

-- Table for storing users
CREATE TABLE `users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `username` varchar(64) DEFAULT NULL,
                         `password` TEXT DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- Table for storing goals
CREATE TABLE `goals` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `name` varchar(64) DEFAULT NULL,
                           `description` TEXT DEFAULT NULL,
                           `due_date` DATE DEFAULT NULL,
                           `completion_status` TINYINT(1) DEFAULT 0,
                           `user_id` int,  -- Foreign key to users
                           PRIMARY KEY (`id`),
                           CONSTRAINT `fk_user_goals`
                               FOREIGN KEY (`user_id`)
                                   REFERENCES `users` (`id`)
                                   ON DELETE CASCADE
                                   ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

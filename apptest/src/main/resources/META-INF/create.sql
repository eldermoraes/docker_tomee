CREATE SCHEMA `soujava` DEFAULT CHARACTER SET latin1 ;
CREATE TABLE `soujava`.`access` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`));
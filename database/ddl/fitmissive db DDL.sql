-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fitmissive
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fitmissive` ;

-- -----------------------------------------------------
-- Schema fitmissive
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fitmissive` DEFAULT CHARACTER SET utf8 ;
USE `fitmissive` ;

-- -----------------------------------------------------
-- Table `fitmissive`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`users` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`users` (
  `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(32) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `salt` VARCHAR(32) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `created_at` DATETIME(6) NOT NULL,
  `fullname` VARCHAR(64) NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fitmissive`.`mondays`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`mondays` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`mondays` (
  `monday_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `split` VARCHAR(800) NOT NULL,
  PRIMARY KEY (`monday_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `monday_user_id_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `fitmissive`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fitmissive`.`tuesdays`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`tuesdays` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`tuesdays` (
  `tuesday_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `split` VARCHAR(800) NOT NULL,
  PRIMARY KEY (`tuesday_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `tuesday_user_id_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `fitmissive`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fitmissive`.`wednesdays`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`wednesdays` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`wednesdays` (
  `wednesday_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `split` VARCHAR(800) NOT NULL,
  PRIMARY KEY (`wednesday_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `wednesday_user_id_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `fitmissive`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fitmissive`.`thursdays`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`thursdays` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`thursdays` (
  `thursday_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `split` VARCHAR(800) NOT NULL,
  PRIMARY KEY (`thursday_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `thursday_user_id_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `fitmissive`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fitmissive`.`fridays`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`fridays` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`fridays` (
  `friday_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `split` VARCHAR(800) NOT NULL,
  PRIMARY KEY (`friday_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `friday_user_id_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `fitmissive`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fitmissive`.`saturdays`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`saturdays` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`saturdays` (
  `saturday_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `split` VARCHAR(800) NOT NULL,
  PRIMARY KEY (`saturday_id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `saturday_user_id_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `fitmissive`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fitmissive`.`sundays`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`sundays` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`sundays` (
  `sunday_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `split` VARCHAR(800) NULL,
  PRIMARY KEY (`sunday_id`),
  INDEX `user_id_fk_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `sunday_user_id_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `fitmissive`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fitmissive`.`user_sessions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fitmissive`.`user_sessions` ;

CREATE TABLE IF NOT EXISTS `fitmissive`.`user_sessions` (
  `session_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `hash` VARCHAR(50) NULL,
  PRIMARY KEY (`session_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

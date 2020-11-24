SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `outreach` DEFAULT CHARACTER SET utf8 ;
USE `outreach` ;

-- -----------------------------------------------------
-- Table `outreach`.`admin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `outreach`.`admin` ;

CREATE  TABLE IF NOT EXISTS `outreach`.`admin` (
  `a_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `a_fName` VARCHAR(20) NOT NULL ,
  `a_lName` VARCHAR(20) NOT NULL ,
  `a_gender` VARCHAR(6) NOT NULL ,
  `a_age` INT(11) NOT NULL ,
  `a_contact` VARCHAR(15) NOT NULL ,
  `a_password` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`a_id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 124
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `outreach`.`event`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `outreach`.`event` ;

CREATE  TABLE IF NOT EXISTS `outreach`.`event` (
  `eventID` INT(11) NOT NULL AUTO_INCREMENT ,
  `activity` VARCHAR(45) NOT NULL ,
  `description` VARCHAR(100) NULL DEFAULT NULL ,
  `place` VARCHAR(45) NULL DEFAULT NULL ,
  `date` VARCHAR(45) NULL DEFAULT NULL ,
  `contactNumber` VARCHAR(15) NULL DEFAULT NULL ,
  `a_id` VARCHAR(10) NULL DEFAULT NULL ,
  PRIMARY KEY (`eventID`) )
ENGINE = InnoDB
AUTO_INCREMENT = 9034
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `outreach`.`event_reg`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `outreach`.`event_reg` ;

CREATE  TABLE IF NOT EXISTS `outreach`.`event_reg` (
  `regID` INT(11) NOT NULL AUTO_INCREMENT ,
  `eventID` INT(11) NULL DEFAULT NULL ,
  `v_id` INT(11) NULL DEFAULT NULL ,
  `attendance` VARCHAR(3) NOT NULL DEFAULT 'a' ,
  `a_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`regID`) ,
  INDEX `eventID_idx` (`eventID` ASC) ,
  INDEX `v_id_idx` (`v_id` ASC) )
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `outreach`.`volunteer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `outreach`.`volunteer` ;

CREATE  TABLE IF NOT EXISTS `outreach`.`volunteer` (
  `v_id` INT(11) NOT NULL AUTO_INCREMENT ,
  `v_fName` VARCHAR(20) NOT NULL ,
  `v_lName` VARCHAR(20) NOT NULL ,
  `v_gender` VARCHAR(6) NOT NULL ,
  `v_age` INT(11) NOT NULL ,
  `v_contact` VARCHAR(15) NOT NULL ,
  `v_password` VARCHAR(45) NOT NULL ,
  `wahPoints` INT(11) NULL DEFAULT '0' ,
  PRIMARY KEY (`v_id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 4570
DEFAULT CHARACTER SET = utf8;

USE `outreach` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

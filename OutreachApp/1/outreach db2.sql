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
  `a_id` VARCHAR(10) NOT NULL ,
  `a_fName` VARCHAR(20) NOT NULL ,
  `a_lName` VARCHAR(20) NOT NULL ,
  `a_gender` VARCHAR(6) NOT NULL ,
  `a_age` INT(11) NOT NULL ,
  `a_contact` VARCHAR(15) NOT NULL ,
  `a_password` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`a_id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `outreach`.`volunteer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `outreach`.`volunteer` ;

CREATE  TABLE IF NOT EXISTS `outreach`.`volunteer` (
  `v_id` VARCHAR(10) NOT NULL ,
  `v_fName` VARCHAR(20) NOT NULL ,
  `v_lName` VARCHAR(20) NOT NULL ,
  `v_gender` VARCHAR(6) NOT NULL ,
  `v_age` INT(11) NOT NULL ,
  `v_contact` VARCHAR(15) NOT NULL ,
  `v_password` VARCHAR(45) NOT NULL ,
  `wahPoints` INT NULL ,
  PRIMARY KEY (`v_id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `outreach`.`event`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `outreach`.`event` ;

CREATE  TABLE IF NOT EXISTS `outreach`.`event` (
  `eventID` VARCHAR(10) NOT NULL ,
  `activity` VARCHAR(45) NOT NULL ,
  `description` VARCHAR(100) NULL ,
  `place` VARCHAR(45) NULL ,
  `date` VARCHAR(45) NULL ,
  `contactNumber` VARCHAR(15) NULL ,
  PRIMARY KEY (`eventID`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `outreach`.`Event Registration`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `outreach`.`Event Registration` ;

CREATE  TABLE IF NOT EXISTS `outreach`.`Event Registration` (
  `regID` VARCHAR(10) NOT NULL ,
  `eventID` VARCHAR(45) NULL ,
  `v_id` VARCHAR(10) NULL ,
  `attendance` VARCHAR(3) NULL ,
  `a_id` VARCHAR(10) NULL ,
  PRIMARY KEY (`regID`) ,
  INDEX `eventID_idx` (`eventID` ASC) ,
  INDEX `v_id_idx` (`v_id` ASC) ,
  INDEX `a_id_idx` (`a_id` ASC) ,
  CONSTRAINT `eventID`
    FOREIGN KEY (`eventID` )
    REFERENCES `outreach`.`event` (`eventID` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `v_id`
    FOREIGN KEY (`v_id` )
    REFERENCES `outreach`.`volunteer` (`v_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `a_id`
    FOREIGN KEY (`a_id` )
    REFERENCES `outreach`.`admin` (`a_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `outreach` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

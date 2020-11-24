create database outreach;
show databases;
use outreach;

CREATE  TABLE IF NOT EXISTS Volunteer ( 
  v_id varchar(10) not null,
  v_fName VARCHAR(20) NOT NULL ,
  v_lName VARCHAR(20) NOT NULL ,
  v_gender VARCHAR(6) NOT NULL ,
  v_age INT NOT NULL ,
  v_contact VARCHAR(15) NOT NULL ,
  v_password VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`v_id`) );
  
  select * from Volunteer;
  
  CREATE  TABLE IF NOT EXISTS admin ( 
  a_id varchar(10) not null,
  a_fName VARCHAR(20) NOT NULL ,
  a_lName VARCHAR(20) NOT NULL ,
  a_gender VARCHAR(6) NOT NULL ,
  a_age INT NOT NULL ,
  a_contact VARCHAR(15) NOT NULL ,
  a_password VARCHAR(45) NOT NULL ,
  PRIMARY KEY (a_id) );
  
   select * from admin;
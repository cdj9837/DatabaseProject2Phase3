-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 12:17 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8
DROP DATABASE IF EXISTS scraplunch;
CREATE DATABASE scraplunch;
USE scraplunch;

DROP TABLE IF EXISTS parttime;
DROP TABLE IF EXISTS fulltime;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS secretary;
DROP TABLE IF EXISTS technician;
DROP TABLE IF EXISTS technology;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS college_population;
DROP TABLE IF EXISTS college;
DROP TABLE IF EXISTS scrap;
DROP TABLE IF EXISTS recycling;
DROP TABLE IF EXISTS recycle_bins;

DROP TABLE IF EXISTS manufacturer;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scraplunch`
--

-- --------------------------------------------------------

--
-- Table structure for table `scraplunch`
--

CREATE TABLE `scrap` (
  `scrapid` varchar(20) NOT NULL,
  `mngrssn` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scraplunch`
--


-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `SSN` int(9) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Scrap_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--


--
-- Table structure for table `fulltime`
--

CREATE TABLE `fulltime` (
  `SSN` int(9) NOT NULL,
  `Salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table insert --

--
-- Dumping data for table `fulltime`
--


-- --------------------------------------------------------

--
-- Table structure for table `parttime`
--

CREATE TABLE `parttime` (
  `SSN` int(9) NOT NULL,
  `hourlyrate` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table insert --


-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `SSN` int(9) NOT NULL,
  `scrapID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `secretary`
--

CREATE TABLE `secretary` (
  `SSN` int(9) NOT NULL,
  `scrapID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `technician`
--

CREATE TABLE `technician` (
  `SSN` int(9) NOT NULL,
  `scrapID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `College_ID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Scrap_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college_population`
--

CREATE TABLE `college_population` (
  `Person_id` varchar(20) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `typeKey` int(10) NOT NULL
  -- 1 is student 2 is faculty --
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `recycle_bins`
--

CREATE TABLE `recycle_bins` (
  `BinId` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------
--
-- Table structure for table `recycling`
--

CREATE TABLE `recycling` (
  `DonorID` varchar(20) NOT NULL,
  `BinId` varchar(20) NOT NULL,
  `Weight` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `ManName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `technology`
--

CREATE TABLE `technology` (
  `manName` varchar(50) NOT NULL,
  `PartNo` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `scrapId` varchar(9) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

ALTER TABLE `scraplunch`.`college` 
ADD PRIMARY KEY (`College_ID`),
ADD INDEX `Scrap_ID_idx` (`Scrap_ID` ASC) VISIBLE;
;

ALTER TABLE `scraplunch`.`college_population` 
ADD PRIMARY KEY (`Person_id`);
;

ALTER TABLE `scraplunch`.`employee` 
ADD PRIMARY KEY (`SSN`);
;

ALTER TABLE `scraplunch`.`fulltime` 
ADD PRIMARY KEY (`SSN`);
;

ALTER TABLE `scraplunch`.`manager` 
ADD PRIMARY KEY (`SSN`);
;

ALTER TABLE `scraplunch`.`manufacturer` 
ADD PRIMARY KEY (`ManName`);
;

ALTER TABLE `scraplunch`.`parttime` 
ADD PRIMARY KEY (`SSN`);
;

ALTER TABLE `scraplunch`.`recycle_bins` 
ADD PRIMARY KEY (`BinId`);
;

ALTER TABLE `scraplunch`.`scrap` 
ADD PRIMARY KEY (`scrapid`);
;

ALTER TABLE `scraplunch`.`secretary` 
ADD PRIMARY KEY (`SSN`);
;

ALTER TABLE `scraplunch`.`technician` 
ADD PRIMARY KEY (`SSN`);
;

ALTER TABLE `scraplunch`.`technology` 
ADD INDEX `scrapID_idx` (`scrapId` ASC) VISIBLE;
;
ALTER TABLE `scraplunch`.`technology` 
ADD CONSTRAINT `scrapId`
  FOREIGN KEY (`scrapId`)
  REFERENCES `scraplunch`.`scrap` (`scrapid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`technician` 
ADD CONSTRAINT `SSN`
  FOREIGN KEY (`SSN`)
  REFERENCES `scraplunch`.`employee` (`SSN`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`technician` 
ADD CONSTRAINT `scrapID1`
  FOREIGN KEY (`scrapID`)
  REFERENCES `scraplunch`.`scrap` (`scrapid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`secretary` 
ADD INDEX `scrapID2_idx` (`scrapID` ASC) VISIBLE;
;
ALTER TABLE `scraplunch`.`secretary` 
ADD CONSTRAINT `SSN1`
  FOREIGN KEY (`SSN`)
  REFERENCES `scraplunch`.`employee` (`SSN`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `scrapID2`
  FOREIGN KEY (`scrapID`)
  REFERENCES `scraplunch`.`scrap` (`scrapid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`college_population` 
ADD INDEX `universityID_idx` (`UniversityID` ASC) VISIBLE;
;
ALTER TABLE `scraplunch`.`college_population` 
ADD CONSTRAINT `universityID`
  FOREIGN KEY (`UniversityID`)
  REFERENCES `scraplunch`.`college` (`College_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`parttime` 
ADD CONSTRAINT `ssn3`
  FOREIGN KEY (`SSN`)
  REFERENCES `scraplunch`.`employee` (`SSN`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`technology` 
ADD INDEX `manName_idx` (`manName` ASC) VISIBLE;
;
ALTER TABLE `scraplunch`.`technology` 
ADD CONSTRAINT `manName`
  FOREIGN KEY (`manName`)
  REFERENCES `scraplunch`.`manufacturer` (`ManName`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`manager` 
ADD INDEX `scrapid4_idx` (`scrapID` ASC) VISIBLE;
;
ALTER TABLE `scraplunch`.`manager` 
ADD CONSTRAINT `ssn4`
  FOREIGN KEY (`SSN`)
  REFERENCES `scraplunch`.`employee` (`SSN`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `scrapid4`
  FOREIGN KEY (`scrapID`)
  REFERENCES `scraplunch`.`scrap` (`scrapid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`fulltime` 
ADD CONSTRAINT `ssn5`
  FOREIGN KEY (`SSN`)
  REFERENCES `scraplunch`.`employee` (`SSN`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`employee` 
ADD INDEX `scrapid6_idx` (`Scrap_id` ASC) VISIBLE;
;
ALTER TABLE `scraplunch`.`employee` 
ADD CONSTRAINT `scrapid6`
  FOREIGN KEY (`Scrap_id`)
  REFERENCES `scraplunch`.`scrap` (`scrapid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `scraplunch`.`college` 
ADD CONSTRAINT `scrapid7`
  FOREIGN KEY (`Scrap_ID`)
  REFERENCES `scraplunch`.`scrap` (`scrapid`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
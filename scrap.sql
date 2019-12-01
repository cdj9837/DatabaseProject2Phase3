-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 12:17 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8


DROP TABLE IF EXISTS parttime;
DROP TABLE IF EXISTS technician;
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

INSERT INTO `scrap` (`scrapid`, `mngrssn`) VALUES
('1', 100100100),
('2', 100100101),
('3', 100100100),
('4', 100100101),
('5', 100100102),
('6', 100100101),
('7', 100100103);

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

INSERT INTO `employee` (`SSN`, `Fname`, `Lname`, `Location`,`Scrap_id`) VALUES
(100100100, 'Evie', 'Joron', '029 Lakeland Street', 1),
(100100101, 'Hugh', 'Tipple', '14 Melody Center', 2),
(100100102, 'Arnaldo', 'Earney', '96 Prentice Point', 3),
(100100103, 'Laurent', 'Grugerr', '3795 Porter Trail', 4),
(171262236, 'Art', 'Hardesty', '75509 Walton Plaza', 5),
(210367707, 'Lotti', 'Wesson', '442 Gateway Alley', 6),
(216603587, 'Rochette', 'Garrals', '15 Burning Wood Plaz', 7),
(237178483, 'Charlene', 'Cameron', '209 Lotheville Stree', 1),
(257825921, 'Khalil', 'Mildmott', '43284 Aberg Point', 2),
(269636885, 'Carree', 'Dredge', '526 Westerfield Driv', 3),
(291448142, 'Whitby', 'Czaja', '55 Waxwing Trail', 4),
(326200947, 'Suzanna', 'Wyldish', '7865 Memorial Street', 5),
(349610901, 'Perle', 'Augustin', '6 Del Mar Terrace', 6),
(359291322, 'Nikoletta', 'Pippin', '1403 Eagan Plaza', 6),
(383952728, 'Vanessa', 'Rootham', '67142 6th Lane', 7),
(434148279, 'Vernon', 'Cholton', '7693 Sutherland Aven', 1),
(440297970, 'Putnam', 'Noyes', '15857 Kim Plaza', 2),
(453162391, 'Shepperd', 'Colcomb', '72138 Crownhardt Poi', 3),
(485793231, 'Bonnibelle', 'Woolfoot', '8658 Bunker Hill Pla', 4),
(489332811, 'Susanne', 'Kleinhausen', '83940 Green Way', 5),
(492991604, 'Nadiya', 'Brownsmith', '88 Banding Alley', 7),
(509547414, 'Darlleen', 'Dunlap', '48309 Bay Point', 1),
(541389983, 'Chanda', 'Witling', '80 Northfield Drive', 2),
(566625392, 'Linnet', 'Rushe', '8 Moulton Lane', 3),
(578460656, 'Trudey', 'Handrick', '166 Mosinee Plaza', 4),
(596522145, 'Ebeneser', 'Hailey', '27 Park Meadow Place', 5),
(615512940, 'Liesa', 'Hawkswell', '92249 Debra Pass', 6),
(628667517, 'Jaye', 'Welling', '29 Redwing Hill', 7),

-- Below is part time --
(635945508, 'Manfred', 'Asmus', '10 Coleman Road', 1),
(648147692, 'Starlene', 'Lemmanbie', '49006 Green Ridge St', 2),
(676131029, 'Cad', 'Caplis', '0147 Vermont Hill', 3),
(695570654, 'Alva', 'Scedall', '43 Dapin Pass', 4),
(718909746, 'Torrence', 'Minigo', '7443 Hansons Street', 5),
(723868147, 'Ellwood', 'Vermer', '387 Vermont Crossing', 6),
(734804828, 'Fredi', 'Benedek', '25 Raven Court', 7),
(754766128, 'Damaris', 'Chaplin', '27 Tennessee Point', 1),
(756438300, 'Elston', 'Baine', '5 Northfield Alley', 2),
(765920811, 'Karie', 'Shorthill', '9945 Talmadge Street', 3),
(769989954, 'Lauryn', 'Boyle', '6 Trailsway Crossing', 4),
(770105620, 'Jaymie', 'Slinn', '0477 Park Meadow Poi', 5),
(785580903, 'Alley', 'Radleigh', '1048 Kropf Place', 6),
(819472549, 'Artair', 'Tothacot', '20548 Sutteridge Cir', 7),
(836742727, 'Cecilius', 'Cundy', '853 Blue Bill Park R', 1),
(846492251, 'Cedric', 'Eagar', '4996 Harbort Alley', 2),
(861415185, 'Roma', 'Leadbeatter', '4 Dakota Road', 3),
(870870641, 'Rozanna', 'Ridsdale', '155 Southridge Stree', 4),
(871216153, 'Angie', 'Szwandt', '10 International Hil', 5),
(873252391, 'Gillian', 'Storkes', '141 Briar Crest Cent', 6),
(880026169, 'Garwin', 'Tinsley', '295 Bay Junction', 7),
(898956730, 'Travus', 'Jozwicki', '5743 Fuller Pass', 1);

-- --------------------------------------------------------

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

INSERT INTO `fulltime` (`SSN`,`Salary`) VALUES
(100100100, 60000),
(100100101, 60000),
(100100102, 60000),
(100100103, 60000),
(171262236, 45000),
(210367707, 45000),
(216603587, 45000),
(237178483, 50000),
(257825921, 50000),
(269636885, 50000),
(291448142, 50000),
(326200947, 50000),
(349610901, 50000),
(359291322, 50000),
(383952728, 50000),
(434148279, 35000),
(440297970, 35000),
(453162391, 35000),
(485793231, 35000),
(489332811, 35000),
(492991604, 35000),
(509547414, 35000),
(541389983, 35000),
(566625392, 35000),
(578460656, 35000),
(596522145, 35000),
(615512940, 35000),
(628667517, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `parttime`
--

CREATE TABLE `parttime` (
  `SSN` int(9) NOT NULL,
  `hourlyrate` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table insert --
INSERT INTO `parttime` (`SSN`,`hourlyrate`) VALUES
(635945508, 10),
(648147692, 10),
(676131029, 10),
(695570654, 10),
(718909746, 10),
(723868147, 10),
(734804828, 10),
(754766128, 10),
(756438300, 10),
(765920811, 10),
(769989954, 10),
(770105620, 10),
(785580903, 10),
(819472549, 10),
(836742727, 10),
(846492251, 10),
(861415185, 10),
(870870641, 10),
(871216153, 10),
(873252391, 10),
(880026169, 10),
(898956730, 10);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `SSN` int(9) NOT NULL,
  `scrapID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `manager` (`SSN`,`scrapID`) VALUES
(100100100,1),
(100100101,2),
(100100102,3),
(100100103,4);

-- --------------------------------------------------------

--
-- Table structure for table `secretary`
--

CREATE TABLE `secretary` (
  `SSN` int(9) NOT NULL,
  `scrapID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `secretary` (`SSN`,`scrapID`) VALUES
(210367707,5),
(216603587,6),
(237178483,7),
(257825921,1),
(269636885,2);

-- --------------------------------------------------------

--
-- Table structure for table `technician`
--

CREATE TABLE `technician` (
  `SSN` int(9) NOT NULL,
  `scrapID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `technician` (`SSN`, `scrapID`) VALUES
(485793231,3),
(489332811,4),
(492991604,5),
(509547414,6),
(541389983,7),
(566625392,1),
(578460656,2);

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

INSERT INTO `college` (`College_ID`, `Name`, `Location`, `Scrap_ID`) VALUES
('UTA', 'University of Texas at Arlington', 'Texas', 1),
('UTD', 'University of Texas at Dallas', 'Texas', 2),
('UT', 'University of Texas Austin', 'Texas', 3),
('UTSA', 'University of Texas at San Antonio', 'Texas', 4),
('A&M', 'A&M University', 'Texas', 5),
('TWU', 'Texas Womans University', 'Texas', 6),
('UNT', 'University of North Texas', 'Texas', 7);

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

INSERT INTO `college_population` (`Person_id`, `UniversityID`, `typeKey`) VALUES
('009009009', 'UTA', 1),
('009009008', 'UTD', 2),
('009009007', 'UT', 1),
('009009006', 'TWU', 2);

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `recycle_bins`
--

CREATE TABLE `recycle_bins` (
  `BinId` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `recycle_bins` (`BinId`, `Type`) VALUES
(1, 'Plastic'),
(2, 'Paper'),
(3, 'Glass'),
(4,'Aluminium');

-- --------------------------------------------------------
--
-- Table structure for table `recycling`
--

CREATE TABLE `recycling` (
  `DonorID` varchar(20) NOT NULL,
  `BinId` varchar(20) NOT NULL,
  `Weight` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `recycling` VALUES
(009009009, 1, .5),
(009009008, 2, .75),
(009009007, 3, 1.5),
(009009006, 4, 1);

-- --------------------------------------------------------
--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `ManName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `manufacturer` (`ManName`) VALUES
('Man1'),
('Man2'),
('Man3'),
('Man4');

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

INSERT INTO `technology` (`manName`, `PartNo`, `Name`, `scrapId` ,`Type`) VALUES
('Man1', 1, 'Scanner', 1, 'typescan'),
('Man2', 2, 'Scale', 6, 'Scale'),
('Man3', 3, 'thingamajig', 4, 'camera'),
('Man4', 4, 'dohicky', 5, 'processing chip');
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

ALTER TABLE `scraplunch`.`recycling` 
ADD INDEX `bin_idx` (`BinId` ASC) VISIBLE;
;
ALTER TABLE `scraplunch`.`recycling` 
ADD CONSTRAINT `bin`
  FOREIGN KEY (`BinId`)
  REFERENCES `scraplunch`.`recycle_bins` (`BinId`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


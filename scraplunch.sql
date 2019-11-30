-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 12:17 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

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
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `EmpID` varchar(20) NOT NULL,
  `EmployeeSSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`EmpID`, `EmployeeSSN`) VALUES
('1', 836742727),
('10', 615512940),
('11', 111291607),
('12', 453162391),
('13', 718909746),
('14', 861415185),
('15', 349610901),
('16', 509547414),
('17', 578460656),
('18', 171262236),
('19', 754766128),
('2', 870870641),
('20', 628667517),
('21', 635945508),
('22', 485793231),
('23', 695570654),
('24', 489332811),
('25', 359291322),
('26', 104236541),
('27', 257825921),
('28', 769989954),
('29', 326200947),
('3', 846492251),
('30', 237178483),
('31', 541389983),
('32', 723868147),
('33', 756438300),
('34', 113501352),
('35', 383952728),
('36', 898956730),
('37', 871216153),
('38', 269636885),
('39', 765920811),
('4', 434148279),
('40', 770105620),
('41', 210367707),
('42', 734804828),
('43', 440297970),
('44', 216603587),
('45', 873252391),
('46', 648147692),
('47', 566625392),
('48', 136589252),
('49', 880026169),
('5', 676131029),
('50', 819472549),
('6', 492991604),
('7', 291448142),
('8', 785580903),
('9', 596522145);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `SSN` int(9) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Job` varchar(30) NOT NULL,
  `MgrSSN` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`SSN`, `Fname`, `Lname`, `Location`, `Job`, `MgrSSN`) VALUES
(104236541, 'Evie', 'Joron', '029 Lakeland Street', 'Accounting Assistant III', NULL),
(111291607, 'Hugh', 'Tipple', '14 Melody Center', 'Engineer I', NULL),
(113501352, 'Arnaldo', 'Earney', '96 Prentice Point', 'Environmental Tech', NULL),
(136589252, 'Laurent', 'Grugerr', '3795 Porter Trail', 'Associate Professor', NULL),
(171262236, 'Art', 'Hardesty', '75509 Walton Plaza', 'Junior Executive', NULL),
(210367707, 'Lotti', 'Wesson', '442 Gateway Alley', 'Geologist II', NULL),
(216603587, 'Rochette', 'Garrals', '15 Burning Wood Plaz', 'Electrical Engineer', NULL),
(237178483, 'Charlene', 'Cameron', '209 Lotheville Stree', 'Civil Engineer', NULL),
(257825921, 'Khalil', 'Mildmott', '43284 Aberg Point', 'Mechanical Systems Engineer', NULL),
(269636885, 'Carree', 'Dredge', '526 Westerfield Driv', 'Environmental Tech', NULL),
(291448142, 'Whitby', 'Czaja', '55 Waxwing Trail', 'Recruiting Manager', NULL),
(326200947, 'Suzanna', 'Wyldish', '7865 Memorial Street', 'Senior Editor', NULL),
(349610901, 'Perle', 'Augustin', '6 Del Mar Terrace', 'Nuclear Power Engineer', NULL),
(359291322, 'Nikoletta', 'Pippin', '1403 Eagan Plaza', 'Research Assistant II', NULL),
(383952728, 'Vanessa', 'Rootham', '67142 6th Lane', 'Computer Systems Analyst I', NULL),
(434148279, 'Vernon', 'Cholton', '7693 Sutherland Aven', 'Software Engineer II', NULL),
(440297970, 'Putnam', 'Noyes', '15857 Kim Plaza', 'Clinical Specialist', NULL),
(453162391, 'Shepperd', 'Colcomb', '72138 Crownhardt Poi', 'Product Engineer', NULL),
(485793231, 'Bonnibelle', 'Woolfoot', '8658 Bunker Hill Pla', 'Sales Representative', NULL),
(489332811, 'Susanne', 'Kleinhausen', '83940 Green Way', 'Community Outreach Specialist', NULL),
(492991604, 'Nadiya', 'Brownsmith', '88 Banding Alley', 'Biostatistician I', NULL),
(509547414, 'Darlleen', 'Dunlap', '48309 Bay Point', 'Environmental Specialist', NULL),
(541389983, 'Chanda', 'Witling', '80 Northfield Drive', 'Quality Engineer', NULL),
(566625392, 'Linnet', 'Rushe', '8 Moulton Lane', 'Sales Associate', NULL),
(578460656, 'Trudey', 'Handrick', '166 Mosinee Plaza', 'Professor', NULL),
(596522145, 'Ebeneser', 'Hailey', '27 Park Meadow Place', 'Assistant Professor', NULL),
(615512940, 'Liesa', 'Hawkswell', '92249 Debra Pass', 'Help Desk Technician', NULL),
(628667517, 'Jaye', 'Welling', '29 Redwing Hill', 'VP Product Management', NULL),
(635945508, 'Manfred', 'Asmus', '10 Coleman Road', 'Engineer II', NULL),
(648147692, 'Starlene', 'Lemmanbie', '49006 Green Ridge St', 'Programmer Analyst III', NULL),
(676131029, 'Cad', 'Caplis', '0147 Vermont Hill', 'Health Coach IV', NULL),
(695570654, 'Alva', 'Scedall', '43 Dapin Pass', 'Financial Analyst', NULL),
(718909746, 'Torrence', 'Minigo', '7443 Hansons Street', 'Safety Technician I', NULL),
(723868147, 'Ellwood', 'Vermer', '387 Vermont Crossing', 'Administrative Assistant II', NULL),
(734804828, 'Fredi', 'Benedek', '25 Raven Court', 'Sales Associate', NULL),
(754766128, 'Damaris', 'Chaplin', '27 Tennessee Point', 'Staff Scientist', NULL),
(756438300, 'Elston', 'Baine', '5 Northfield Alley', 'Assistant Professor', NULL),
(765920811, 'Karie', 'Shorthill', '9945 Talmadge Street', 'Legal Assistant', NULL),
(769989954, 'Lauryn', 'Boyle', '6 Trailsway Crossing', 'Analyst Programmer', NULL),
(770105620, 'Jaymie', 'Slinn', '0477 Park Meadow Poi', 'Engineer III', NULL),
(785580903, 'Alley', 'Radleigh', '1048 Kropf Place', 'Payment Adjustment Coordinator', NULL),
(819472549, 'Artair', 'Tothacot', '20548 Sutteridge Cir', 'Structural Engineer', NULL),
(836742727, 'Cecilius', 'Cundy', '853 Blue Bill Park R', 'Desktop Support Technician', NULL),
(846492251, 'Cedric', 'Eagar', '4996 Harbort Alley', 'Research Assistant I', NULL),
(861415185, 'Roma', 'Leadbeatter', '4 Dakota Road', 'Paralegal', NULL),
(870870641, 'Rozanna', 'Ridsdale', '155 Southridge Stree', 'Geological Engineer', NULL),
(871216153, 'Angie', 'Szwandt', '10 International Hil', 'Web Designer III', NULL),
(873252391, 'Gillian', 'Storkes', '141 Briar Crest Cent', 'Financial Analyst', NULL),
(880026169, 'Garwin', 'Tinsley', '295 Bay Junction', 'Director of Sales', NULL),
(898956730, 'Travus', 'Jozwicki', '5743 Fuller Pass', 'Nurse', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `ID` varchar(20) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`ID`, `FName`, `LName`) VALUES
('AKyte6ba', 'Anastasia', 'Kyte'),
('CEtoi38d', 'Cory', 'Etoile'),
('DWoff51a', 'Dilan', 'Woffinden'),
('EJack4ed', 'Ermengarde', 'Jackson'),
('EPryc2a2', 'Eugene', 'Pryce'),
('FCrut66d', 'Ferrel', 'Crut'),
('GJans176', 'Gilberte', 'Jansey'),
('GRash34e', 'George', 'Rasher'),
('HSuto6a3', 'Hynda', 'Sutor'),
('JAlib5fe', 'Jackquelin', 'Aliberti'),
('JEull1de', 'Jone', 'Eull'),
('LMaca772', 'Lamond', 'Macallam'),
('MBigg9e3', 'Margareta', 'Biggins'),
('NBour0dc', 'Niki', 'Bourhill'),
('PIsaa13d', 'Peirce', 'Isaaksohn'),
('SNarb7fc', 'Sybila', 'Narbett'),
('TJaku63c', 'Trumann', 'Jakubowski'),
('TMato117', 'Teodoor', 'Matokhnin'),
('ZGodh9fc', 'Zorah', 'Godbald'),
('ZSamb4bd', 'Zarah', 'Sambles');

-- --------------------------------------------------------

--
-- Table structure for table `fulltime`
--

CREATE TABLE `fulltime` (
  `SSN` int(9) NOT NULL,
  `Salary` int(10) NOT NULL,
  `Manager` tinyint(1) NOT NULL,
  `Technitian` tinyint(1) NOT NULL,
  `Secretary` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `SSN` int(9) NOT NULL,
  `Dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `PartNo` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parttime`
--

CREATE TABLE `parttime` (
  `SSN` int(9) NOT NULL,
  `HrRate` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recyclable_collection`
--

CREATE TABLE `recyclable_collection` (
  `DonorID` varchar(20) NOT NULL,
  `RecycleType` varchar(20) NOT NULL,
  `Weight` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recycle_bins`
--

CREATE TABLE `recycle_bins` (
  `BinId` varchar(20) NOT NULL,
  `PartNo` varchar(20) NOT NULL,
  `CreditID` int(11) NOT NULL,
  `Paper` tinyint(1) NOT NULL,
  `Plastic` tinyint(1) NOT NULL,
  `Aluminium` tinyint(1) NOT NULL,
  `Glass` tinyint(1) NOT NULL,
  `Weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recyle_facilitator`
--

CREATE TABLE `recyle_facilitator` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `PlasticPPP` int(5) NOT NULL DEFAULT 0,
  `PaperPPP` int(5) NOT NULL DEFAULT 0,
  `GlassPPP` int(5) NOT NULL DEFAULT 0,
  `AluminiumPPP` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` varchar(20) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technitian`
--

CREATE TABLE `technitian` (
  `ID` varchar(20) NOT NULL,
  `SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `technology`
--

CREATE TABLE `technology` (
  `PartNo` varchar(20) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `RespTechSSN` int(9) NOT NULL,
  `Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `UniversityID` varchar(20) NOT NULL,
  `UniversityName` varchar(50) NOT NULL,
  `UniversityLocation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `university_population`
--

CREATE TABLE `university_population` (
  `PopID` varchar(20) NOT NULL,
  `UniversityID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`EmployeeSSN`),
  ADD UNIQUE KEY `EmpID` (`EmpID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `fulltime`
--
ALTER TABLE `fulltime`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`PartNo`);

--
-- Indexes for table `parttime`
--
ALTER TABLE `parttime`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `recyclable_collection`
--
ALTER TABLE `recyclable_collection`
  ADD PRIMARY KEY (`DonorID`);

--
-- Indexes for table `recycle_bins`
--
ALTER TABLE `recycle_bins`
  ADD PRIMARY KEY (`BinId`);

--
-- Indexes for table `recyle_facilitator`
--
ALTER TABLE `recyle_facilitator`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `technitian`
--
ALTER TABLE `technitian`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`PartNo`,`Location`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`UniversityID`);

--
-- Indexes for table `university_population`
--
ALTER TABLE `university_population`
  ADD PRIMARY KEY (`PopID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

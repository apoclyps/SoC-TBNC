-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2013 at 04:17 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tbnc`
--
CREATE DATABASE `tbnc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tbnc`;

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE IF NOT EXISTS `absence` (
  `AbsenceID` varchar(6) NOT NULL,
  `ChildID` varchar(6) DEFAULT NULL,
  `AbsenceDate` date NOT NULL,
  PRIMARY KEY (`AbsenceID`),
  KEY `causes` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `absenceview`
--
CREATE TABLE IF NOT EXISTS `absenceview` (
`AbsenceID` varchar(6)
,`ChildID` varchar(6)
,`ChildFullName` varchar(61)
,`AbsenceDate` date
);
-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `AddressID` varchar(6) NOT NULL,
  `AddressLine` varchar(50) NOT NULL DEFAULT '',
  `AddressLineTwo` varchar(50) NOT NULL DEFAULT '',
  `City` varchar(35) NOT NULL DEFAULT 'Dundee',
  `County` varchar(30) NOT NULL DEFAULT 'Angus',
  `Postcode` varchar(8) NOT NULL DEFAULT '',
  `Country` varchar(30) NOT NULL DEFAULT 'United Kingdom',
  PRIMARY KEY (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`AddressID`, `AddressLine`, `AddressLineTwo`, `City`, `County`, `Postcode`, `Country`) VALUES
('A00000', '2877 South Qatar Ct.', '48276  Gold Beach Blvd.', 'Orlando', 'Hawaii', 'DQ99 3RU', 'Guadeloupe'),
('A00001', '63953  Green Bay St.', '94699 South Natchitoches Ave.', 'East Rutherford', 'Alaska', 'BE70 1KB', 'Heard Island and Mcdonald Isla'),
('A00002', '49143  Montebello Ct.', '82625 South Finland Ave.', 'Lansing', 'Tennessee', 'QW15 8GD', 'Mongolia'),
('A00003', '84790 North United States Minor Outlying Islands C', '72800 West Cameroon Ave.', 'Scottsdale', 'Arkansas', 'DK78 3XQ', 'Costa Rica'),
('A00004', '74552 North Saint Lucia Ln.', '68937  Sweden St.', 'Durant', 'Utah', 'HV42 2GN', 'Martinique'),
('A00005', '60177 East Fresno St.', '29744  Antarctica St.', 'Hattiesburg', 'Ohio', 'PI61 3OC', 'Burkina Faso'),
('A00006', '21324  Antigua and Barbuda Way', '50742 East Hammond Ave.', 'Logan', 'Rhode Island', 'QW56 4LX', 'Uruguay'),
('A00007', '98745 East South Georgia and The South Sandwich Is', '48083  Kiribati Ln.', 'Yigo', 'Oklahoma', 'FK89 1RI', 'Senegal'),
('A00008', '24072 East Burkina Faso Ave.', '65805  Georgia Blvd.', 'Minnetonka', 'California', 'OH91 1IP', 'Iran'),
('A00010', '29981 South Cocos (Keeling) Islands Ave.', '48517 North Slovenia Way', 'East Rutherford', 'Florida', 'WI16 3BA', 'Venezuela'),
('A00011', '65391 East El Monte Ln.', '12683 South Chile Way', 'San Gabriel', 'Hawaii', 'UL50 4GV', 'Pitcairn'),
('A00012', '17899 North Lesotho Way', '64958 East Suriname Way', 'Fort Smith', 'New Mexico', 'ER88 2DO', 'Egypt'),
('A00013', '86448 West Norwalk St.', '6064  Portugal St.', 'Wilmington', 'New Mexico', 'MU67 3XN', 'Congo'),
('A00014', '29301 West Austria Ave.', '20847 North Haiti Way', 'San Francisco', 'Rhode Island', 'VM74 1BM', 'Slovenia'),
('A00015', '67643 North Bahrain Ave.', '44587 North Canada Way', 'Cicero', 'Maryland', 'MC5 5DM', 'Kyrgyzstan'),
('A00016', '55532 South Bismarck Way', '57011 East Uzbekistan Ln.', 'Miami Beach', 'Idaho', 'RQ63 6OT', 'Egypt'),
('A00017', '26407 West Vanuatu Way', '60712 South Bandera Ct.', 'Bossier City', 'Missouri', 'QZ85 9NE', 'Samoa'),
('A00018', '69654  Northern Mariana Islands St.', '17993 West Ann Arbor Way', 'Stanton', 'Texas', 'EI97 9NH', 'Costa Rica'),
('A00019', '22758  France Ln.', '89899 South Berkeley Ct.', 'Caguas', 'New Mexico', 'DZ2 9HF', 'Afghanistan'),
('A00020', '8086 North Venezuela Ct.', '57689 East Guyana Ln.', 'Toledo', 'New Hampshire', 'UN76 0JZ', 'New Zealand'),
('A00021', '50618 West Clarksburg Ln.', '20545 West Little Falls St.', 'Lomita', 'Arizona', 'IJ87 0MR', 'South Africa'),
('A00022', '2612 South China St.', '906 East Baldwin Park Ln.', 'Glen Cove', 'South Carolina', 'VF33 9FG', 'Djibouti'),
('A00023', '59295 South Austria Ave.', '69687 West Ecuador Ct.', 'Bradbury', 'District of Columbia', 'BB12 7YM', 'Estonia'),
('A00024', '69442  Moldova Way', '74016  Cape Verde Ave.', 'Citrus Heights', 'North Dakota', 'NI87 8ZG', 'Croatia'),
('A00025', '2331  Palmdale Blvd.', '59083 East Azerbaijan Ct.', 'Jeffersontown', 'Michigan', 'PB40 1HG', 'Syrian Arab Republic'),
('A00026', '71961 West Cranston Blvd.', '45825 South Aruba Way', 'Washington', 'Virginia', 'QE27 7UU', 'Bolivia'),
('A00027', '83072 East Eden Prairie Way', '56969 West Papua New Guinea Blvd.', 'Gilette', 'Missouri', 'OD36 4CZ', 'Korea'),
('A00028', '13510  Botswana Blvd.', '91119 North Hopkinsville Way', 'Nashville', 'Indiana', 'FH56 7BB', 'Maldives'),
('A00029', '78008 North Estonia Ct.', '69255 North Equatorial Guinea Way', 'Boulder Junction', 'Minnesota', 'LH58 9FH', 'Jordan'),
('A00030', '91651 West Murray Way', '83272 East Thailand Blvd.', 'Springfield', 'West Virginia', 'HB2 3JQ', 'Seychelles'),
('A00031', '59947 South Corona Way', '77022 West Qatar Ave.', 'Fairfax', 'New Jersey', 'RF57 6ZG', 'Svalbard and Jan Mayen'),
('A00032', '29384 South Derby Ave.', '48649 South Cody Blvd.', 'San Angelo', 'Mississippi', 'NF8 3SV', 'Solomon Islands'),
('A00034', '14641 West Enid St.', '18495 East McKeesport Ave.', 'Springfield', 'Ohio', 'KY49 4QM', 'Bolivia'),
('A00035', '41047 North Turkmenistan Ave.', '15131 East Benin Ln.', 'Boulder Junction', 'Oregon', 'OF15 0BL', 'China'),
('A00037', '38037 East Bosnia and Herzegovina Way', '32660 North Layton Way', 'Bowling Green', 'Iowa', 'NN77 1QQ', 'Antigua and Barbuda'),
('A00038', '95340  Carson Ln.', '81720 South Bolivia Blvd.', 'Scottsbluff', 'Connecticut', 'DS81 0UH', 'United Kingdom'),
('A00039', '47459 East Poland Ct.', '28828  Cocos (Keeling) Islands Ct.', 'Amesbury', 'Nebraska', 'ZA59 0YO', 'Dominica'),
('A00040', '47692  Antarctica Ave.', '6594 East Hungary Way', 'Kettering', 'West Virginia', 'NR69 4KU', 'Belarus'),
('A00041', '97772  Jamaica Ave.', '73056 West Kazakhstan Blvd.', 'Murrieta', 'Pennsylvania', 'SS14 8BA', 'Antarctica'),
('A00042', '30619 East Tunisia Way', '21850 North Des Moines Ave.', 'Irving', 'Tennessee', 'AT89 7PN', 'Virgin Islands'),
('A00043', '88293 South Forrest City Way', '85721  Pine Bluff Blvd.', 'Lower Burrell', 'Tennessee', 'IM59 4UQ', 'Mauritania'),
('A00044', '99192 South Congo Ln.', '82528 North Cedar City St.', 'Monterey', 'California', 'JM65 7YL', 'Micronesia'),
('A00045', '17448 North Iran', ' Islamic Republic of Ct.', '49737 West Portugal St.', 'Pomona', 'Colorado', 'ZO50 8BJ'),
('A00046', '15111 West Tanzania', ' United Republic of Ln.', '51918 East Senegal Way', 'Greenville', 'North Da', 'QJ91 7IE'),
('A00047', '86745 West Azerbaijan Ave.', '13154 West Suriname Ct.', 'Stamford', 'Michigan', 'LJ43 2OO', 'United Arab Emirates'),
('A00048', '23207 West Virgin Islands', ' British St.', '42665 South New Zealand St.', 'Revere', 'District', 'MK82 1NP'),
('A00049', '19428 North Iceland Ct.', '12338 North Culver City Ave.', 'Joplin', 'New York', 'YK51 2JB', 'Tuvalu'),
('A00050', '60293 East Anguilla St.', '26204 West Blacksburg Ln.', 'Latrobe', 'Colorado', 'RY41 1VJ', 'Slovenia'),
('A00051', '22919 East Antarctica Ln.', '38125 West Canada Ave.', 'Rensselaer', 'Maryland', 'NK42 9MD', 'Maldives'),
('A00052', '5131 East Antarctica Way', '31424 South French Polynesia Ln.', 'Fullerton', 'Wisconsin', 'DX91 4ZJ', 'Norfolk Island'),
('A00053', '72585 South Papua New Guinea Ln.', '6182 West Antarctica Blvd.', 'Idaho Falls', 'Pennsylvania', 'PE41 7HZ', 'Serbia and Montenegro'),
('A00054', '64084 West Oman Ln.', '16858 North Bozeman Ln.', 'Merced', 'California', 'LT87 0XJ', 'Suriname'),
('A00055', '72204 North Algeria Way', '23535  Gabon Ave.', 'Homer', 'Wisconsin', 'IW0 3BN', 'Morocco'),
('A00056', '11635 West Iceland St.', '63903 West Burkina Faso Blvd.', 'Plainfield', 'Rhode Island', 'OM49 4PI', 'Western Sahara'),
('A00057', '5830 North Christmas Island Way', '27477 East Austria Ave.', 'Winston-Salem', 'Alaska', 'VW5 2GW', 'Somalia'),
('A00058', '40082 South Austria Blvd.', '20587 West Tonga Ave.', 'Edina', 'Tennessee', 'EP40 8ID', 'Malaysia'),
('A00059', '51807 West Senegal Way', '70248 West Austria Ave.', 'Burlington', 'Nebraska', 'QG37 0RG', 'Trinidad and Tobago'),
('A00060', '8689 South Bangladesh Way', '92945  Bulgaria Blvd.', 'Crown Point', 'Pennsylvania', 'IH29 9DM', 'Romania'),
('A00061', '25690 West Costa Rica Ct.', '28616 North Micronesia Blvd.', 'Bandera', 'Delaware', 'BZ20 9VK', 'Kiribati'),
('A00062', '11064 North Bulgaria Way', '30226 West Christmas Island St.', 'Spartanburg', 'Kentucky', 'TX65 5QT', 'Nauru'),
('A00063', '58049 South Armenia Ct.', '71504 North Mexico Ln.', 'Thibodaux', 'Montana', 'QB5 5UL', 'Eritrea'),
('A00064', '78585  French Southern Territories Blvd.', '96001  Macao Ave.', 'Benton Harbor', 'Pennsylvania', 'AG0 5JS', 'Gabon'),
('A00065', '38231  Angola Way', '26825 West Angola Blvd.', 'La Palma', 'New Mexico', 'FG62 8GE', 'Croatia'),
('A00066', '44358 North American Samoa Blvd.', '10648 East Solomon Islands Ct.', 'Sunbury', 'Montana', 'QW96 2BM', 'Azerbaijan'),
('A00067', '86875 East Dominica St.', '14816 North Guayama Ln.', 'Miami Beach', 'Mississippi', 'MD20 1JW', 'Lebanon'),
('A00068', '97301 South Burundi Blvd.', '12722 West Burkina Faso Ave.', 'Bend', 'New Mexico', 'GY8 4NO', 'South Georgia and The South Sa'),
('A00069', '84295  Argentina Ave.', '25342  Cambodia Ct.', 'Taylorsville', 'Mississippi', 'RE59 8ZJ', 'Afghanistan'),
('A00070', '71657 North Moscow Ct.', '71153 East New Caledonia Ct.', 'Kankakee', 'Arkansas', 'SA99 3VN', 'Viet Nam'),
('A00071', '5450 North Chelsea Blvd.', '3710 North Ecuador Blvd.', 'Rancho Santa Margarita', 'Texas', 'ST14 9BE', 'China'),
('A00072', '8293 South Romania Ln.', '25305  Central African Republic Ct.', 'Midwest City', 'Arizona', 'RK68 3YA', 'Niue'),
('A00073', '83435 East Algeria Way', '91503 South Sudan Ave.', 'Arcadia', 'Washington', 'WQ90 2JM', 'Afghanistan'),
('A00074', '17874 East Argentina Way', '84623  Macao Blvd.', 'Frankfort', 'California', 'JE84 0CO', 'Singapore'),
('A00075', '21428 North Iceland Blvd.', '70113 North Anderson Blvd.', 'Loudon', 'South Dakota', 'XX42 7ZH', 'Ukraine'),
('A00076', '60391  Syrian Arab Republic Ct.', '69505 South Berkeley Ln.', 'Niagara Falls', 'Texas', 'NQ74 3UW', 'Latvia'),
('A00077', '13473 South Netherlands Ct.', '34950 South Franklin Ct.', 'Ann Arbor', 'Montana', 'OR56 0RD', 'Indonesia'),
('A00078', '88236 North Bahrain Blvd.', '4090 West Angola St.', 'Philadelphia', 'Virginia', 'FD55 9BF', 'Kazakhstan'),
('A00079', '49807  Harrisburg Ave.', '10284 North Austria Way', 'Cody', 'Alabama', 'CF73 6LG', 'Korea'),
('A00080', '48480 West Pine Bluff Way', '24978  Luxembourg Ct.', 'Columbia', 'Nevada', 'YT17 1UD', 'Russian Federation'),
('A00081', '50166 West Iceland Ave.', '37421 North Georgia Ln.', 'Clarksville', 'Nebraska', 'BW53 8BU', 'Oman'),
('A00082', '27088 West Costa Rica Blvd.', '4811 East Cape Verde Blvd.', 'Birmingham', 'Maryland', 'TS72 5SD', 'Gabon'),
('A00083', '56245 South Angola St.', '46417 West Bahrain St.', 'Everett', 'Maine', 'TL0 4NC', 'Lebanon'),
('A00084', '13621  Huntington Beach Ct.', '51678 West Saint Lucia Way', 'Stamford', 'Iowa', 'CB94 3BX', 'French Southern Territories'),
('A00085', '15554  Columbus Ave.', '67404 East Luxembourg Blvd.', 'Agoura Hills', 'Massachusetts', 'SE87 1RD', 'Dominica'),
('A00086', '77862  Morgantown Ave.', '48091  French Southern Territories Ln.', 'Avalon', 'Pennsylvania', 'YV6 7LU', 'Barbados'),
('A00087', '5548 South Luxembourg Way', '16073 East Chad St.', 'Irvine', 'Delaware', 'MB75 2OJ', 'Ethiopia'),
('A00088', '56314 West Jamaica Ave.', '35971 North Taiwan', ' Province of China St.', 'La Habra', 'New York', 'OV5 3SW'),
('A00089', '28761 East Cameroon St.', '45701 West Martinique St.', 'Sault Ste. Marie', 'Nevada', 'OF56 2BS', 'Costa Rica'),
('A00090', '80181 North Saudi Arabia St.', '71468 North Botswana Ct.', 'Urbana', 'Arizona', 'CZ20 9SE', 'American Samoa'),
('A00092', '12598 East Bolivia St.', '91037 West Cook Islands St.', 'New London', 'Oregon', 'XC84 1OE', 'Azerbaijan'),
('A00093', '46008 North Trinidad and Tobago Way', '84706 East Hoboken Ave.', 'Saint Louis', 'Ohio', 'JT45 5HV', 'Yemen'),
('A00094', '62884  Algeria Way', '29898 West Venezuela Ct.', 'Santa Cruz', 'Missouri', 'XO72 5FK', 'Bulgaria'),
('A00095', '42533 West Algeria Way', '13261 East Azerbaijan Blvd.', 'Lynchburg', 'New Hampshire', 'OC18 5VJ', 'Syrian Arab Republic'),
('A00096', '28813 South Azerbaijan Blvd.', '94205  Rwanda Ct.', 'Kokomo', 'West Virginia', 'XS24 4EQ', 'Estonia'),
('A00097', '54260 South Beckley Ct.', '44189 West Guinea Ln.', 'Quincy', 'Connecticut', 'BV52 6CF', 'Australia'),
('A00098', '35418 North Mali Ct.', '98125 West Rwanda Ave.', 'Gettysburg', 'Vermont', 'PY82 8WN', 'Netherlands'),
('A00099', '30208 South Cocos (Keeling) Islands Ave.', '98394 West Cuba Ave.', 'Pass Christian', 'Missouri', 'WG19 6VZ', 'United Arab Emirates');

-- --------------------------------------------------------

--
-- Stand-in structure for view `addressesview`
--
CREATE TABLE IF NOT EXISTS `addressesview` (
`AddressID` varchar(6)
,`AddressLine` varchar(50)
,`AddressLineTwo` varchar(50)
,`City` varchar(35)
,`County` varchar(30)
,`Postcode` varchar(8)
,`Country` varchar(30)
);
-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `AttendanceID` varchar(6) NOT NULL,
  `ChildID` varchar(6) DEFAULT NULL,
  `FeeID` varchar(6) DEFAULT NULL,
  `RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None') NOT NULL DEFAULT 'None',
  `WeekStart` date NOT NULL,
  `Teas` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Monday` bit(1) NOT NULL DEFAULT b'0',
  `Tuesday` bit(1) NOT NULL DEFAULT b'0',
  `Wednesday` bit(1) NOT NULL DEFAULT b'0',
  `Thursday` bit(1) NOT NULL DEFAULT b'0',
  `Friday` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`AttendanceID`),
  KEY `LocatedIn` (`RoomName`),
  KEY `Attends` (`ChildID`),
  KEY `Generates` (`FeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `attendanceview`
--
CREATE TABLE IF NOT EXISTS `attendanceview` (
`AttendanceID` varchar(6)
,`ChildID` varchar(6)
,`FeeID` varchar(6)
,`RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None')
,`WeekStart` date
,`Teas` tinyint(3) unsigned
,`Monday` bit(1)
,`Tuesday` bit(1)
,`Wednesday` bit(1)
,`Thursday` bit(1)
,`Friday` bit(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE IF NOT EXISTS `child` (
  `ChildID` varchar(6) NOT NULL,
  `FirstName` varchar(30) NOT NULL DEFAULT '',
  `Surname` varchar(30) NOT NULL DEFAULT '',
  `DOB` date NOT NULL,
  `StartDate` date NOT NULL,
  `LeavingDate` date DEFAULT NULL,
  `RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None') NOT NULL DEFAULT 'None',
  `AddressID` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`ChildID`),
  KEY `Occupies` (`RoomName`),
  KEY `ResidesAt` (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`ChildID`, `FirstName`, `Surname`, `DOB`, `StartDate`, `LeavingDate`, `RoomName`, `AddressID`) VALUES
('C00001', 'Regan', 'Swanson', '2009-05-05', '2012-10-18', '2007-02-22', 'Panda Room', 'A00065'),
('C00003', 'Britanni', 'Mcgowan', '2009-05-05', '2012-10-18', '2007-02-22', 'Panda Room', 'A00015'),
('C00009', 'Raya', 'Morin', '2009-05-05', '2012-10-18', '2007-02-22', 'Baby Room', 'A00022'),
('C00010', 'Vielka', 'Humphrey', '2009-05-05', '2012-10-18', '2007-02-22', 'Panda Room', 'A00069');

-- --------------------------------------------------------

--
-- Table structure for table `childemergencycontact`
--

CREATE TABLE IF NOT EXISTS `childemergencycontact` (
  `ChildID` varchar(6) NOT NULL,
  `EmergencyContactID` varchar(6) NOT NULL,
  `Relationship` varchar(20) NOT NULL DEFAULT 'Relative',
  KEY `RequiresContact` (`ChildID`),
  KEY `RequiredForEmergency` (`EmergencyContactID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `childemergencycontactview`
--
CREATE TABLE IF NOT EXISTS `childemergencycontactview` (
`ChildID` varchar(6)
,`ChildFullName` varchar(61)
,`DOB` date
,`StartDate` date
,`LeavingDate` date
,`RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None')
,`AddressID` varchar(6)
,`ContactFullName` varchar(81)
,`HomePhone` varchar(11)
,`MobilePhone` varchar(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `childparent`
--

CREATE TABLE IF NOT EXISTS `childparent` (
  `ChildID` varchar(6) NOT NULL,
  `ParentID` varchar(6) NOT NULL,
  `Relationship` enum('Mother','Father','Step-Mother','Step-Father','Guardian','Other') NOT NULL DEFAULT 'Mother',
  PRIMARY KEY (`ChildID`,`ParentID`),
  KEY `ResponsibleFor` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `childrenview`
--
CREATE TABLE IF NOT EXISTS `childrenview` (
`ChildID` varchar(6)
,`FirstName` varchar(30)
,`Surname` varchar(30)
,`DOB` date
,`StartDate` date
,`LeavingDate` date
,`RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None')
,`AddressID` varchar(6)
);
-- --------------------------------------------------------

--
-- Table structure for table `consent`
--

CREATE TABLE IF NOT EXISTS `consent` (
  `ConsentID` varchar(6) NOT NULL,
  `DoctorID` varchar(6) NOT NULL,
  `NurseryPolicies` bit(1) NOT NULL DEFAULT b'0',
  `NurseryPoliciesDate` date NOT NULL,
  `AdministerCapol` bit(1) NOT NULL DEFAULT b'0',
  `AdministerCapolDate` date NOT NULL,
  `ApplySunCream` bit(1) NOT NULL DEFAULT b'0',
  `ApplySunCreamDate` date NOT NULL,
  `CoachTrips` bit(1) NOT NULL DEFAULT b'0',
  `NurseryPhotos` bit(1) NOT NULL DEFAULT b'0',
  `PhotosTaken` bit(1) NOT NULL DEFAULT b'0',
  `PublicTransport` bit(1) NOT NULL DEFAULT b'0',
  `PublicityPhoto` bit(1) NOT NULL DEFAULT b'0',
  `ReceiveMedicalTreatmentDate` date NOT NULL,
  `RecieveMedicalTreatment` bit(1) NOT NULL DEFAULT b'0',
  `ReportPhoto` bit(1) NOT NULL DEFAULT b'0',
  `Walks` bit(1) NOT NULL DEFAULT b'0',
  `WebsitePhotos` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ConsentID`),
  KEY `RegistedTo` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `consentview`
--
CREATE TABLE IF NOT EXISTS `consentview` (
`ConsentID` varchar(6)
,`DoctorID` varchar(6)
,`NurseryPolicies` bit(1)
,`NurseryPoliciesDate` date
,`AdministerCapol` bit(1)
,`AdministerCapolDate` date
,`ApplySunCream` bit(1)
,`ApplySunCreamDate` date
,`CoachTrips` bit(1)
,`NurseryPhotos` bit(1)
,`PhotosTaken` bit(1)
,`PublicTransport` bit(1)
,`PublicityPhoto` bit(1)
,`ReceiveMedicalTreatmentDate` date
,`RecieveMedicalTreatment` bit(1)
,`ReportPhoto` bit(1)
,`Walks` bit(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE IF NOT EXISTS `deposit` (
  `DepositID` varchar(6) NOT NULL,
  `DepositPaid` bit(1) NOT NULL DEFAULT b'0',
  `DepositReturned` bit(1) NOT NULL DEFAULT b'0',
  `Amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `DepositPaidDate` date NOT NULL,
  `DepositRefundedDate` date DEFAULT NULL,
  PRIMARY KEY (`DepositID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `depositview`
--
CREATE TABLE IF NOT EXISTS `depositview` (
`DepositID` varchar(6)
,`DepositPaid` bit(1)
,`DepositReturned` bit(1)
,`Amount` decimal(10,2)
,`DepositPaidDate` date
,`DepositRefundedDate` date
);
-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `DoctorID` varchar(6) NOT NULL,
  `FirstName` varchar(30) NOT NULL DEFAULT '',
  `Surname` varchar(50) NOT NULL DEFAULT '',
  `AddressID` varchar(6) NOT NULL,
  PRIMARY KEY (`DoctorID`),
  KEY `PracticeAt` (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `doctorview`
--
CREATE TABLE IF NOT EXISTS `doctorview` (
`DoctorID` varchar(6)
,`DoctorFullName` varchar(84)
,`AddressID` varchar(6)
,`AddressLine` varchar(50)
,`AddressLineTwo` varchar(50)
,`City` varchar(35)
,`County` varchar(30)
,`Postcode` varchar(8)
,`Country` varchar(30)
);
-- --------------------------------------------------------

--
-- Table structure for table `emergencycontact`
--

CREATE TABLE IF NOT EXISTS `emergencycontact` (
  `EmergencyContactID` varchar(6) NOT NULL,
  `FirstName` varchar(30) NOT NULL DEFAULT '',
  `Surname` varchar(50) NOT NULL DEFAULT '',
  `AddressID` varchar(6) NOT NULL,
  `HomePhone` varchar(11) NOT NULL DEFAULT '',
  `MobilePhone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`EmergencyContactID`),
  KEY `Requires` (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `emergencycontactview`
--
CREATE TABLE IF NOT EXISTS `emergencycontactview` (
`EmergencyContactID` varchar(6)
,`FullName` varchar(81)
,`AddressID` varchar(6)
,`HomePhone` varchar(11)
,`MobilePhone` varchar(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `monthlyfee`
--

CREATE TABLE IF NOT EXISTS `monthlyfee` (
  `FeeID` varchar(6) NOT NULL,
  `DateCharged` date NOT NULL,
  `ChildID` varchar(6) NOT NULL,
  `ParentID` varchar(6) NOT NULL,
  `RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None') NOT NULL DEFAULT 'None',
  PRIMARY KEY (`FeeID`),
  KEY `AccumulatedBy` (`ChildID`),
  KEY `PaidBy` (`ParentID`),
  KEY `calculatedFrom` (`RoomName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `monthlyfeeview`
--
CREATE TABLE IF NOT EXISTS `monthlyfeeview` (
`FeeID` varchar(6)
,`DateCharged` date
,`ChildID` varchar(6)
,`ParentID` varchar(6)
,`RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None')
);
-- --------------------------------------------------------

--
-- Table structure for table `monthlyinvoice`
--

CREATE TABLE IF NOT EXISTS `monthlyinvoice` (
  `InvoiceID` varchar(6) NOT NULL,
  `FeeID` varchar(6) NOT NULL,
  `VoucherSchemeID` varchar(6) NOT NULL,
  `PayDate` date NOT NULL,
  `LateFees` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Outstanding` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Deductions` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`InvoiceID`),
  KEY `Discounts` (`VoucherSchemeID`),
  KEY `GeneratesFee` (`FeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `monthlyinvoiceview`
--
CREATE TABLE IF NOT EXISTS `monthlyinvoiceview` (
`InvoiceID` varchar(6)
,`FeeID` varchar(6)
,`VoucherSchemeID` varchar(6)
,`PayDate` date
,`LateFees` decimal(10,2)
,`Outstanding` decimal(10,2)
,`Deductions` decimal(10,2)
);
-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `ParentID` varchar(6) NOT NULL,
  `Title` varchar(35) NOT NULL DEFAULT 'Miss',
  `FirstName` varchar(30) NOT NULL DEFAULT '',
  `Surname` varchar(50) NOT NULL DEFAULT '',
  `HomeTelephone` varchar(11) NOT NULL DEFAULT '',
  `WorkTelephone` varchar(11) DEFAULT NULL,
  `MobileTelephone` varchar(11) NOT NULL DEFAULT '',
  `Email` varchar(75) DEFAULT NULL,
  `NamedKnownatWork` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `parentrelationshipview`
--
CREATE TABLE IF NOT EXISTS `parentrelationshipview` (
`ChildID` varchar(6)
,`FirstName` varchar(30)
,`Surname` varchar(30)
,`DOB` date
,`StartDate` date
,`LeavingDate` date
,`RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None')
,`AddressID` varchar(6)
,`FullName` varchar(117)
,`HomeTelephone` varchar(11)
,`WorkTelephone` varchar(11)
,`MobileTelephone` varchar(11)
,`Email` varchar(75)
,`NamedKnownatWork` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `parentview`
--
CREATE TABLE IF NOT EXISTS `parentview` (
`ParentID` varchar(6)
,`FullName` varchar(117)
,`HomeTelephone` varchar(11)
,`WorkTelephone` varchar(11)
,`MobileTelephone` varchar(11)
,`Email` varchar(75)
,`NamedKnownatWork` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `paymenthistory`
--

CREATE TABLE IF NOT EXISTS `paymenthistory` (
  `PaymentID` varchar(6) NOT NULL,
  `InvoiceID` varchar(6) NOT NULL,
  `ParentID` varchar(6) DEFAULT NULL,
  `Paid` bit(1) NOT NULL DEFAULT b'0',
  `PaymentType` enum('Credit Card','Cash','Cheque','Direct Debit','Other') NOT NULL DEFAULT 'Direct Debit',
  `DateDue` date NOT NULL,
  `AmountDue` decimal(10,2) NOT NULL DEFAULT '0.00',
  `DatePaid` date DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `Requests` (`InvoiceID`),
  KEY `PaymentBy` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `paymenthistoryview`
--
CREATE TABLE IF NOT EXISTS `paymenthistoryview` (
`PaymentID` varchar(6)
,`InvoiceID` varchar(6)
,`ParentID` varchar(6)
,`Paid` bit(1)
,`PaymentType` enum('Credit Card','Cash','Cheque','Direct Debit','Other')
,`DateDue` date
,`AmountDue` decimal(10,2)
,`DatePaid` date
);
-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `RegisterID` varchar(6) NOT NULL,
  `ChildID` varchar(6) NOT NULL,
  `ConsentID` varchar(6) NOT NULL,
  `DepositID` varchar(6) NOT NULL,
  `DoctorID` varchar(6) NOT NULL,
  `PlacementType` enum('Full Time','Part Time') NOT NULL DEFAULT 'Part Time',
  `PreferedStartDate` date DEFAULT NULL,
  PRIMARY KEY (`RegisterID`),
  KEY `Enrolls` (`ChildID`),
  KEY `RequiresConsent` (`ConsentID`),
  KEY `RequiresDeposit` (`DepositID`),
  KEY `RequiresDoctor` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `registerview`
--
CREATE TABLE IF NOT EXISTS `registerview` (
`RegisterID` varchar(6)
,`ChildID` varchar(6)
,`ConsentID` varchar(6)
,`DepositID` varchar(6)
,`DoctorID` varchar(6)
,`PlacementType` enum('Full Time','Part Time')
,`PreferedStartDate` date
);
-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None') NOT NULL DEFAULT 'None',
  `DailyCharge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `WeeklyCharge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `TeaCharge` decimal(10,2) NOT NULL DEFAULT '0.00',
  `RoomVacancy` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AgeGroup` enum('0-12','12-24','2-3','2-4','3.5-5','None') NOT NULL DEFAULT 'None',
  `StaffRatio` enum('1:3','1-5','1-8','None') NOT NULL DEFAULT 'None',
  PRIMARY KEY (`RoomName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomName`, `DailyCharge`, `WeeklyCharge`, `TeaCharge`, `RoomVacancy`, `AgeGroup`, `StaffRatio`) VALUES
('Baby Room', 12.08, 51.12, 3.21, 12, '0-12', '1:3'),
('Polar Room', 1.54, 53.32, 5.72, 15, '0-12', '1:3'),
('Panda Room', 4.44, 58.50, 5.45, 12, '0-12', '1:3');

-- --------------------------------------------------------

--
-- Stand-in structure for view `roomview`
--
CREATE TABLE IF NOT EXISTS `roomview` (
`RoomName` enum('Baby Room','Polar Room','Panda Room','Teddy?s Transformers','Daisy?s Discoverers','Oakley?s Explorers','None')
,`DailyCharge` decimal(10,2)
,`WeeklyCharge` decimal(10,2)
,`TeaCharge` decimal(10,2)
,`RoomVacancy` tinyint(3) unsigned
,`AgeGroup` enum('0-12','12-24','2-3','2-4','3.5-5','None')
,`StaffRatio` enum('1:3','1-5','1-8','None')
);
-- --------------------------------------------------------

--
-- Table structure for table `voucherschemeprovider`
--

CREATE TABLE IF NOT EXISTS `voucherschemeprovider` (
  `VoucherSchemeProviderId` varchar(6) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Discount` decimal(4,3) NOT NULL DEFAULT '0.100',
  PRIMARY KEY (`VoucherSchemeProviderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `voucherschemeproviderview`
--
CREATE TABLE IF NOT EXISTS `voucherschemeproviderview` (
`VoucherSchemeProviderId` varchar(6)
,`Name` varchar(100)
,`Discount` decimal(4,3)
);
-- --------------------------------------------------------

--
-- Table structure for table `voucherschemeregister`
--

CREATE TABLE IF NOT EXISTS `voucherschemeregister` (
  `VoucherSchemeID` varchar(6) NOT NULL,
  `VoucherSchemeProviderId` varchar(6) NOT NULL,
  `ChildID` varchar(6) NOT NULL,
  `ParentID` varchar(6) NOT NULL,
  `IntendedStartDate` date NOT NULL,
  `RegisteredWithCouncil` bit(1) NOT NULL DEFAULT b'0',
  `DateSigned` date NOT NULL,
  PRIMARY KEY (`VoucherSchemeID`),
  KEY `Provides` (`VoucherSchemeProviderId`),
  KEY `Uses` (`ChildID`),
  KEY `Accredited` (`ParentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `voucherschemeregisterview`
--
CREATE TABLE IF NOT EXISTS `voucherschemeregisterview` (
`VoucherSchemeID` varchar(6)
,`ChildID` varchar(6)
,`ParentID` varchar(6)
,`IntendedStartDate` date
,`RegisteredWithCouncil` bit(1)
,`DateSigned` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `voucherview`
--
CREATE TABLE IF NOT EXISTS `voucherview` (
`VoucherSchemeProviderId` varchar(6)
,`ChildID` varchar(6)
,`ChildFullName` varchar(61)
,`ParentID` varchar(6)
,`ParentFullName` varchar(81)
,`IntendedStartDate` date
,`RegisteredWithCouncil` bit(1)
,`DateSigned` date
);
-- --------------------------------------------------------

--
-- Structure for view `absenceview`
--
DROP TABLE IF EXISTS `absenceview`;

CREATE  VIEW `absenceview` AS select `absence`.`AbsenceID` AS `AbsenceID`,`absence`.`ChildID` AS `ChildID`,concat(`child`.`FirstName`,' ',`child`.`Surname`) AS `ChildFullName`,`absence`.`AbsenceDate` AS `AbsenceDate` from (`absence` join `child` on((`absence`.`ChildID` = `child`.`ChildID`))) order by `absence`.`AbsenceID` desc;

-- --------------------------------------------------------

--
-- Structure for view `addressesview`
--
DROP TABLE IF EXISTS `addressesview`;

CREATE  VIEW `addressesview` AS select `address`.`AddressID` AS `AddressID`,`address`.`AddressLine` AS `AddressLine`,`address`.`AddressLineTwo` AS `AddressLineTwo`,`address`.`City` AS `City`,`address`.`County` AS `County`,`address`.`Postcode` AS `Postcode`,`address`.`Country` AS `Country` from `address` order by `address`.`AddressID` desc;

-- --------------------------------------------------------

--
-- Structure for view `attendanceview`
--
DROP TABLE IF EXISTS `attendanceview`;

CREATE  VIEW `attendanceview` AS select `attendance`.`AttendanceID` AS `AttendanceID`,`attendance`.`ChildID` AS `ChildID`,`attendance`.`FeeID` AS `FeeID`,`attendance`.`RoomName` AS `RoomName`,`attendance`.`WeekStart` AS `WeekStart`,`attendance`.`Teas` AS `Teas`,`attendance`.`Monday` AS `Monday`,`attendance`.`Tuesday` AS `Tuesday`,`attendance`.`Wednesday` AS `Wednesday`,`attendance`.`Thursday` AS `Thursday`,`attendance`.`Friday` AS `Friday` from `attendance` order by `attendance`.`AttendanceID` desc;

-- --------------------------------------------------------

--
-- Structure for view `childemergencycontactview`
--
DROP TABLE IF EXISTS `childemergencycontactview`;

CREATE  VIEW `childemergencycontactview` AS select `child`.`ChildID` AS `ChildID`,concat(`child`.`FirstName`,' ',`child`.`Surname`) AS `ChildFullName`,`child`.`DOB` AS `DOB`,`child`.`StartDate` AS `StartDate`,`child`.`LeavingDate` AS `LeavingDate`,`child`.`RoomName` AS `RoomName`,`child`.`AddressID` AS `AddressID`,concat(`emergencycontact`.`FirstName`,' ',`emergencycontact`.`Surname`) AS `ContactFullName`,`emergencycontact`.`HomePhone` AS `HomePhone`,`emergencycontact`.`MobilePhone` AS `MobilePhone` from ((`child` join `childemergencycontact` on((`child`.`ChildID` = `childemergencycontact`.`ChildID`))) join `emergencycontact` on((`emergencycontact`.`EmergencyContactID` = `childemergencycontact`.`EmergencyContactID`))) order by `child`.`ChildID` desc;

-- --------------------------------------------------------

--
-- Structure for view `childrenview`
--
DROP TABLE IF EXISTS `childrenview`;

CREATE  VIEW `childrenview` AS select `child`.`ChildID` AS `ChildID`,`child`.`FirstName` AS `FirstName`,`child`.`Surname` AS `Surname`,`child`.`DOB` AS `DOB`,`child`.`StartDate` AS `StartDate`,`child`.`LeavingDate` AS `LeavingDate`,`child`.`RoomName` AS `RoomName`,`child`.`AddressID` AS `AddressID` from `child` order by `child`.`ChildID` desc;

-- --------------------------------------------------------

--
-- Structure for view `consentview`
--
DROP TABLE IF EXISTS `consentview`;

CREATE  VIEW `consentview` AS select `consent`.`ConsentID` AS `ConsentID`,`consent`.`DoctorID` AS `DoctorID`,`consent`.`NurseryPolicies` AS `NurseryPolicies`,`consent`.`NurseryPoliciesDate` AS `NurseryPoliciesDate`,`consent`.`AdministerCapol` AS `AdministerCapol`,`consent`.`AdministerCapolDate` AS `AdministerCapolDate`,`consent`.`ApplySunCream` AS `ApplySunCream`,`consent`.`ApplySunCreamDate` AS `ApplySunCreamDate`,`consent`.`CoachTrips` AS `CoachTrips`,`consent`.`NurseryPhotos` AS `NurseryPhotos`,`consent`.`PhotosTaken` AS `PhotosTaken`,`consent`.`PublicTransport` AS `PublicTransport`,`consent`.`PublicityPhoto` AS `PublicityPhoto`,`consent`.`ReceiveMedicalTreatmentDate` AS `ReceiveMedicalTreatmentDate`,`consent`.`RecieveMedicalTreatment` AS `RecieveMedicalTreatment`,`consent`.`ReportPhoto` AS `ReportPhoto`,`consent`.`Walks` AS `Walks` from `consent` order by `consent`.`ConsentID` desc;

-- --------------------------------------------------------

--
-- Structure for view `depositview`
--
DROP TABLE IF EXISTS `depositview`;

CREATE  VIEW `depositview` AS select `deposit`.`DepositID` AS `DepositID`,`deposit`.`DepositPaid` AS `DepositPaid`,`deposit`.`DepositReturned` AS `DepositReturned`,`deposit`.`Amount` AS `Amount`,`deposit`.`DepositPaidDate` AS `DepositPaidDate`,`deposit`.`DepositRefundedDate` AS `DepositRefundedDate` from `deposit` order by `deposit`.`DepositID` desc;

-- --------------------------------------------------------

--
-- Structure for view `doctorview`
--
DROP TABLE IF EXISTS `doctorview`;

CREATE  VIEW `doctorview` AS select `doctor`.`DoctorID` AS `DoctorID`,concat('Dr ',`doctor`.`FirstName`,' ',`doctor`.`Surname`) AS `DoctorFullName`,`doctor`.`AddressID` AS `AddressID`,`address`.`AddressLine` AS `AddressLine`,`address`.`AddressLineTwo` AS `AddressLineTwo`,`address`.`City` AS `City`,`address`.`County` AS `County`,`address`.`Postcode` AS `Postcode`,`address`.`Country` AS `Country` from (`doctor` join `address` on((`doctor`.`AddressID` = `address`.`AddressID`))) order by `doctor`.`DoctorID` desc;

-- --------------------------------------------------------

--
-- Structure for view `emergencycontactview`
--
DROP TABLE IF EXISTS `emergencycontactview`;

CREATE  VIEW `emergencycontactview` AS select `emergencycontact`.`EmergencyContactID` AS `EmergencyContactID`,concat(`emergencycontact`.`FirstName`,' ',`emergencycontact`.`Surname`) AS `FullName`,`emergencycontact`.`AddressID` AS `AddressID`,`emergencycontact`.`HomePhone` AS `HomePhone`,`emergencycontact`.`MobilePhone` AS `MobilePhone` from (`emergencycontact` join `address` on((`emergencycontact`.`AddressID` = `address`.`AddressID`))) order by `emergencycontact`.`EmergencyContactID` desc;

-- --------------------------------------------------------

--
-- Structure for view `monthlyfeeview`
--
DROP TABLE IF EXISTS `monthlyfeeview`;

CREATE  VIEW `monthlyfeeview` AS select `monthlyfee`.`FeeID` AS `FeeID`,`monthlyfee`.`DateCharged` AS `DateCharged`,`monthlyfee`.`ChildID` AS `ChildID`,`monthlyfee`.`ParentID` AS `ParentID`,`monthlyfee`.`RoomName` AS `RoomName` from `monthlyfee` order by `monthlyfee`.`FeeID` desc;

-- --------------------------------------------------------

--
-- Structure for view `monthlyinvoiceview`
--
DROP TABLE IF EXISTS `monthlyinvoiceview`;

CREATE  VIEW `monthlyinvoiceview` AS select `monthlyinvoice`.`InvoiceID` AS `InvoiceID`,`monthlyinvoice`.`FeeID` AS `FeeID`,`monthlyinvoice`.`VoucherSchemeID` AS `VoucherSchemeID`,`monthlyinvoice`.`PayDate` AS `PayDate`,`monthlyinvoice`.`LateFees` AS `LateFees`,`monthlyinvoice`.`Outstanding` AS `Outstanding`,`monthlyinvoice`.`Deductions` AS `Deductions` from `monthlyinvoice` order by `monthlyinvoice`.`InvoiceID` desc;

-- --------------------------------------------------------

--
-- Structure for view `parentrelationshipview`
--
DROP TABLE IF EXISTS `parentrelationshipview`;

CREATE  VIEW `parentrelationshipview` AS select `child`.`ChildID` AS `ChildID`,`child`.`FirstName` AS `FirstName`,`child`.`Surname` AS `Surname`,`child`.`DOB` AS `DOB`,`child`.`StartDate` AS `StartDate`,`child`.`LeavingDate` AS `LeavingDate`,`child`.`RoomName` AS `RoomName`,`child`.`AddressID` AS `AddressID`,concat(`parent`.`Title`,' ',`parent`.`FirstName`,' ',`parent`.`Surname`) AS `FullName`,`parent`.`HomeTelephone` AS `HomeTelephone`,`parent`.`WorkTelephone` AS `WorkTelephone`,`parent`.`MobileTelephone` AS `MobileTelephone`,`parent`.`Email` AS `Email`,`parent`.`NamedKnownatWork` AS `NamedKnownatWork` from ((`child` join `childparent` on((`childparent`.`ChildID` = `child`.`ChildID`))) join `parent` on((`parent`.`ParentID` = `childparent`.`ParentID`))) order by `child`.`ChildID` desc;

-- --------------------------------------------------------

--
-- Structure for view `parentview`
--
DROP TABLE IF EXISTS `parentview`;

CREATE  VIEW `parentview` AS select `parent`.`ParentID` AS `ParentID`,concat(`parent`.`Title`,' ',`parent`.`FirstName`,' ',`parent`.`Surname`) AS `FullName`,`parent`.`HomeTelephone` AS `HomeTelephone`,`parent`.`WorkTelephone` AS `WorkTelephone`,`parent`.`MobileTelephone` AS `MobileTelephone`,`parent`.`Email` AS `Email`,`parent`.`NamedKnownatWork` AS `NamedKnownatWork` from `parent` order by `parent`.`ParentID` desc;

-- --------------------------------------------------------

--
-- Structure for view `paymenthistoryview`
--
DROP TABLE IF EXISTS `paymenthistoryview`;

CREATE  VIEW `paymenthistoryview` AS select `paymenthistory`.`PaymentID` AS `PaymentID`,`paymenthistory`.`InvoiceID` AS `InvoiceID`,`paymenthistory`.`ParentID` AS `ParentID`,`paymenthistory`.`Paid` AS `Paid`,`paymenthistory`.`PaymentType` AS `PaymentType`,`paymenthistory`.`DateDue` AS `DateDue`,`paymenthistory`.`AmountDue` AS `AmountDue`,`paymenthistory`.`DatePaid` AS `DatePaid` from `paymenthistory` order by `paymenthistory`.`PaymentID` desc;

-- --------------------------------------------------------

--
-- Structure for view `registerview`
--
DROP TABLE IF EXISTS `registerview`;

CREATE  VIEW `registerview` AS select `register`.`RegisterID` AS `RegisterID`,`register`.`ChildID` AS `ChildID`,`register`.`ConsentID` AS `ConsentID`,`register`.`DepositID` AS `DepositID`,`register`.`DoctorID` AS `DoctorID`,`register`.`PlacementType` AS `PlacementType`,`register`.`PreferedStartDate` AS `PreferedStartDate` from `register` order by `register`.`RegisterID` desc;

-- --------------------------------------------------------

--
-- Structure for view `roomview`
--
DROP TABLE IF EXISTS `roomview`;

CREATE  VIEW `roomview` AS select `room`.`RoomName` AS `RoomName`,`room`.`DailyCharge` AS `DailyCharge`,`room`.`WeeklyCharge` AS `WeeklyCharge`,`room`.`TeaCharge` AS `TeaCharge`,`room`.`RoomVacancy` AS `RoomVacancy`,`room`.`AgeGroup` AS `AgeGroup`,`room`.`StaffRatio` AS `StaffRatio` from `room` order by `room`.`RoomName` desc;

-- --------------------------------------------------------

--
-- Structure for view `voucherschemeproviderview`
--
DROP TABLE IF EXISTS `voucherschemeproviderview`;

CREATE  VIEW `voucherschemeproviderview` AS select `voucherschemeprovider`.`VoucherSchemeProviderId` AS `VoucherSchemeProviderId`,`voucherschemeprovider`.`Name` AS `Name`,`voucherschemeprovider`.`Discount` AS `Discount` from `voucherschemeprovider` order by `voucherschemeprovider`.`VoucherSchemeProviderId` desc;

-- --------------------------------------------------------

--
-- Structure for view `voucherschemeregisterview`
--
DROP TABLE IF EXISTS `voucherschemeregisterview`;

CREATE  VIEW `voucherschemeregisterview` AS select `voucherschemeregister`.`VoucherSchemeID` AS `VoucherSchemeID`,`voucherschemeregister`.`VoucherSchemeProviderId` AS `ChildID`,`voucherschemeregister`.`ParentID` AS `ParentID`,`voucherschemeregister`.`IntendedStartDate` AS `IntendedStartDate`,`voucherschemeregister`.`RegisteredWithCouncil` AS `RegisteredWithCouncil`,`voucherschemeregister`.`DateSigned` AS `DateSigned` from `voucherschemeregister` order by `voucherschemeregister`.`VoucherSchemeID` desc;

-- --------------------------------------------------------

--
-- Structure for view `voucherview`
--
DROP TABLE IF EXISTS `voucherview`;

CREATE  VIEW `voucherview` AS select `voucherschemeregister`.`VoucherSchemeProviderId` AS `VoucherSchemeProviderId`,`voucherschemeregister`.`ChildID` AS `ChildID`,concat(`child`.`FirstName`,' ',`child`.`Surname`) AS `ChildFullName`,`voucherschemeregister`.`ParentID` AS `ParentID`,concat(`parent`.`FirstName`,' ',`parent`.`Surname`) AS `ParentFullName`,`voucherschemeregister`.`IntendedStartDate` AS `IntendedStartDate`,`voucherschemeregister`.`RegisteredWithCouncil` AS `RegisteredWithCouncil`,`voucherschemeregister`.`DateSigned` AS `DateSigned` from ((`voucherschemeregister` join `child` on((`voucherschemeregister`.`ChildID` = `child`.`ChildID`))) join `parent` on((`voucherschemeregister`.`ParentID` = `parent`.`ParentID`))) order by `voucherschemeregister`.`VoucherSchemeID` desc;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `causes` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `Generates` FOREIGN KEY (`FeeID`) REFERENCES `monthlyfee` (`FeeID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Attends` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `LocatedIn` FOREIGN KEY (`RoomName`) REFERENCES `room` (`RoomName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `child`
--
ALTER TABLE `child`
  ADD CONSTRAINT `ResidesAt` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Occupies` FOREIGN KEY (`RoomName`) REFERENCES `room` (`RoomName`) ON UPDATE CASCADE;

--
-- Constraints for table `childemergencycontact`
--
ALTER TABLE `childemergencycontact`
  ADD CONSTRAINT `RequiredForEmergency` FOREIGN KEY (`EmergencyContactID`) REFERENCES `emergencycontact` (`EmergencyContactID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RequiresContact` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `childparent`
--
ALTER TABLE `childparent`
  ADD CONSTRAINT `ResponsibleFor` FOREIGN KEY (`ParentID`) REFERENCES `parent` (`ParentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `OffspringOff` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consent`
--
ALTER TABLE `consent`
  ADD CONSTRAINT `RegistedTo` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`) ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `PracticeAt` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`) ON UPDATE CASCADE;

--
-- Constraints for table `emergencycontact`
--
ALTER TABLE `emergencycontact`
  ADD CONSTRAINT `Requires` FOREIGN KEY (`AddressID`) REFERENCES `address` (`AddressID`);

--
-- Constraints for table `monthlyfee`
--
ALTER TABLE `monthlyfee`
  ADD CONSTRAINT `calculatedFrom` FOREIGN KEY (`RoomName`) REFERENCES `room` (`RoomName`),
  ADD CONSTRAINT `AccumulatedBy` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`),
  ADD CONSTRAINT `PaidBy` FOREIGN KEY (`ParentID`) REFERENCES `parent` (`ParentID`);

--
-- Constraints for table `monthlyinvoice`
--
ALTER TABLE `monthlyinvoice`
  ADD CONSTRAINT `GeneratesFee` FOREIGN KEY (`FeeID`) REFERENCES `monthlyfee` (`FeeID`),
  ADD CONSTRAINT `Discounts` FOREIGN KEY (`VoucherSchemeID`) REFERENCES `voucherschemeregister` (`VoucherSchemeID`);

--
-- Constraints for table `paymenthistory`
--
ALTER TABLE `paymenthistory`
  ADD CONSTRAINT `PaymentBy` FOREIGN KEY (`ParentID`) REFERENCES `parent` (`ParentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Requests` FOREIGN KEY (`InvoiceID`) REFERENCES `monthlyinvoice` (`InvoiceID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `RequiresDoctor` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Enrolls` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `RequiresConsent` FOREIGN KEY (`ConsentID`) REFERENCES `consent` (`ConsentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `RequiresDeposit` FOREIGN KEY (`DepositID`) REFERENCES `deposit` (`DepositID`) ON UPDATE CASCADE;

--
-- Constraints for table `voucherschemeregister`
--
ALTER TABLE `voucherschemeregister`
  ADD CONSTRAINT `Accredited` FOREIGN KEY (`ParentID`) REFERENCES `parent` (`ParentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Provides` FOREIGN KEY (`VoucherSchemeProviderId`) REFERENCES `voucherschemeprovider` (`VoucherSchemeProviderId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Uses` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

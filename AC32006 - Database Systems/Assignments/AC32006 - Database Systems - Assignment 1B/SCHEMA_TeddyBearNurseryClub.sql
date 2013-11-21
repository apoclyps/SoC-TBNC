-- MySQL SCHEMA - Kyle Harrison
--
-- Host: arlia.computing.dundee.ac.uk   	Database: 12ac3d16
-- User: 12ac3u16       	 				Password: 111aaa 
-- ------------------------------------------------------
-- Tested on Server version	5.5.27 - MySQL Community Server 

CREATE SCHEMA IF NOT EXISTS 12ac3d16;

USE 12ac3d16;

--
-- Table structure for table Child
--
CREATE TABLE IF NOT EXISTS Child (
 	ChildID          			varchar(6) NOT NULL,
 	FirstName      	 			varchar(30) NOT NULL DEFAULT '',
 	Surname          			varchar(30) NOT NULL DEFAULT '',
 	DOB              			date NOT NULL ,
 	StartDate        			date NOT NULL,
 	LeavingDate      			date DEFAULT NULL,
 	RoomName     				enum('Baby Room', 'Polar Room', 'Panda Room', 'Teddy’s Transformers', 'Daisy’s Discoverers', 'Oakley’s Explorers',"None") NOT NULL DEFAULT 'None',
 	AddressID	 				varchar(6) NOT NULL DEFAULT '',
PRIMARY KEY (ChildID)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
	
--
-- Table structure for table Address
--	
CREATE TABLE IF NOT EXISTS Address (
  	AddressID          		varchar(6) NOT NULL, 
  	AddressLine     		varchar(50) NOT NULL DEFAULT '', 
 	AddressLineTwo	 		varchar(50) NOT NULL DEFAULT '', 
 	City               		varchar(35) NOT NULL DEFAULT 'Dundee', 
  	County            		varchar(30) NOT NULL DEFAULT 'Angus', 
  	Postcode           		varchar(8) 	NOT NULL DEFAULT '', 
  	Country            		varchar(30) NOT NULL DEFAULT 'United Kingdom', 
PRIMARY KEY (AddressID)) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table Register
--		
CREATE TABLE IF NOT EXISTS Register (
 	RegisterID        			varchar(6) NOT NULL,
 	ChildID      				varchar(6) NOT NULL,
 	ConsentID  					varchar(6) NOT NULL,
 	DepositID  					varchar(6) NOT NULL,
 	DoctorID    				varchar(6) NOT NULL,
 	PlacementType     			enum('Full Time', 'Part Time') NOT NULL DEFAULT 'Part Time',
 	PreferedStartDate 			date DEFAULT NULL,
 PRIMARY KEY (RegisterID)) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 --
-- Table structure for table ChildParent
--	
 CREATE TABLE IF NOT EXISTS ChildParent (
 	ChildID   					varchar(6) NOT NULL,
 	ParentID 					varchar(6) NOT NULL,
 	Relationship   				enum('Mother', 'Father', 'Step-Mother', 'Step-Father', 'Guardian', "Other") NOT NULL DEFAULT 'Mother',
 PRIMARY KEY (ChildID, ParentID)) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

 --
-- Table structure for table Consent
--	
 CREATE TABLE IF NOT EXISTS Consent (
 	ConsentID                   varchar(6) NOT NULL,
 	DoctorID        		 	varchar(6) NOT NULL,
 	NurseryPolicies            	bit(1) NOT NULL DEFAULT 0,
 	NurseryPoliciesDate     	date NOT NULL,
 	AdministerCapol            	bit(1) NOT NULL DEFAULT 0,
 	AdministerCapolDate    		date NOT NULL,
 	ApplySunCream          	 	bit(1) NOT NULL DEFAULT 0,
 	ApplySunCreamDate    		date NOT NULL,
 	CoachTrips               	bit(1) NOT NULL DEFAULT 0,
 	NurseryPhotos               bit(1) NOT NULL DEFAULT 0,
 	PhotosTaken                 bit(1) NOT NULL DEFAULT 0,
 	PublicTransport            	bit(1) NOT NULL DEFAULT 0,
 	PublicityPhoto              bit(1) NOT NULL DEFAULT 0,
 	ReceiveMedicalTreatmentDate	date NOT NULL,
 	RecieveMedicalTreatment     bit(1) NOT NULL DEFAULT 0,
 	ReportPhoto                 bit(1) NOT NULL DEFAULT 0,
 	Walks                       bit(1) NOT NULL DEFAULT 0,
 	WebsitePhotos               bit(1) NOT NULL DEFAULT 0,
 PRIMARY KEY (ConsentID)) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table Doctor
--	 
 CREATE TABLE IF NOT EXISTS Doctor (
 	DoctorID         			varchar(6) NOT NULL,
 	FirstName        			varchar(30) NOT NULL DEFAULT '',
 	Surname          			varchar(50) NOT NULL DEFAULT '',
 	AddressID        			varchar(6) NOT NULL,
 PRIMARY KEY (DoctorID)) ENGINE=InnoDB DEFAULT CHARSET=latin1;

 --
-- Table structure for table Absence
--	
 CREATE TABLE IF NOT EXISTS Absence (
 	AbsenceID    				varchar(6) NOT NULL,
 	ChildID 					varchar(6) NULL,
 	AbsenceDate     			date NOT NULL,
 PRIMARY KEY (AbsenceID)) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
 --
-- Table structure for table Room
--	
 CREATE TABLE IF NOT EXISTS Room (
	RoomName     				enum('Baby Room', 'Polar Room', 'Panda Room', 'Teddy’s Transformers', 'Daisy’s Discoverers', 'Oakley’s Explorers',"None") NOT NULL DEFAULT 'None',
 	DailyCharge  				decimal(10, 2) NOT NULL DEFAULT 0.00,
 	WeeklyCharge 				decimal(10, 2) NOT NULL DEFAULT 0.00,
 	TeaCharge    				decimal(10, 2) NOT NULL DEFAULT 0.00,
 	RoomVacancy  				tinyint UNSIGNED NOT NULL DEFAULT 0,
	AgeGroup     				enum('0-12', '12-24', '2-3', '2-4', '3.5-5',"None") NOT NULL DEFAULT 'None',
	StaffRatio					enum('1:3', '1-5', '1-8',"None") NOT NULL DEFAULT 'None',
 PRIMARY KEY (RoomName))ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
 --
-- Table structure for table Attendance
--	
 CREATE TABLE IF NOT EXISTS Attendance (
 	AttendanceID 				varchar(6) NOT NULL,
 	ChildID 				varchar(6) NULL,
 	FeeID    				varchar(6) NULL,
 	RoomName     				enum('Baby Room', 'Polar Room', 'Panda Room', 'Teddy’s Transformers', 'Daisy’s Discoverers', 'Oakley’s Explorers',"None") NOT NULL DEFAULT 'None',
 	WeekStart    				date NOT NULL,
 	Teas         				tinyint UNSIGNED NOT NULL DEFAULT 0,
 	Monday       				bit(1) NOT NULL default 0,
 	Tuesday      				bit(1) NOT NULL default 0,
 	Wednesday    				bit(1) NOT NULL default 0,
 	Thursday     				bit(1) NOT NULL default 0,
 	Friday       				bit(1) NOT NULL default 0,
 PRIMARY KEY (AttendanceID))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

 --
-- Table structure for table Parent
--	
 CREATE TABLE IF NOT EXISTS Parent (
 	ParentID         			varchar(6) NOT NULL,
 	Title            			varchar(35) NOT NULL DEFAULT 'Miss',
 	FirstName       			varchar(30) NOT NULL DEFAULT '',
 	Surname          			varchar(50) NOT NULL DEFAULT '',
 	HomeTelephone    			varchar(11) NOT NULL DEFAULT '',
 	WorkTelephone    			varchar(11) DEFAULT NULL,
 	MobileTelephone  			varchar(11) NOT NULL DEFAULT '',
 	Email            			varchar(75) DEFAULT NULL,
 	NamedKnownatWork 			varchar(50) DEFAULT NULL,
 PRIMARY KEY (ParentID))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

 --
-- Table structure for table EmergencyContact
--	
 CREATE TABLE IF NOT EXISTS EmergencyContact (
 	EmergencyContactID 			varchar(6) NOT NULL,
 	FirstName          			varchar(30) NOT NULL DEFAULT '',
 	Surname            			varchar(50) NOT NULL DEFAULT '',
 	AddressID   				varchar(6) NOT NULL,
 	HomePhone          			varchar(11) NOT NULL DEFAULT '',
 	MobilePhone     			varchar(11) DEFAULT NULL,
PRIMARY KEY (EmergencyContactID))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

--
-- Table structure for table VoucherSchemeProvider
--	
CREATE TABLE IF NOT EXISTS VoucherSchemeProvider (
 	VoucherSchemeProviderId 	varchar(6) NOT NULL,
 	Name                    	varchar(100) NOT NULL,
 	Discount                	decimal(4, 3) NOT NULL DEFAULT '0.100',
 PRIMARY KEY (VoucherSchemeProviderId))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

 --
-- Table structure for table MonthlyFee
--	
 CREATE TABLE IF NOT EXISTS MonthlyFee (
 	FeeID         	 			varchar(6) NOT NULL,
 	DateCharged    				date NOT NULL,
 	ChildID    					varchar(6) NOT NULL,
 	ParentID  					varchar(6) NOT NULL,
 	RoomName 					enum('Baby Room', 'Polar Room', 'Panda Room', 'Teddy’s Transformers', 'Daisy’s Discoverers', 'Oakley’s Explorers',"None") NOT NULL DEFAULT 'None',
 PRIMARY KEY (FeeID))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;
 
 --
-- Table structure for table MonthlyInvoice
--	
 CREATE TABLE IF NOT EXISTS MonthlyInvoice (
 	InvoiceID                   varchar(6) NOT NULL,
 	FeeID                		varchar(6) NOT NULL,
 	VoucherSchemeID 			varchar(6) NOT NULL,
 	PayDate                     date NOT NULL,
 	LateFees                    decimal(10, 2) NOT NULL DEFAULT 0.00,
 	Outstanding                	decimal(10, 2) NOT NULL DEFAULT 0.00,
 	Deductions                  decimal(10, 2) NOT NULL DEFAULT 0.00,
 PRIMARY KEY (InvoiceID))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

 --
-- Table structure for table PaymentHistory
--	
 CREATE TABLE IF NOT EXISTS PaymentHistory (
 	PaymentID                  	varchar(6) NOT NULL,
 	InvoiceID			varchar(6) NOT NULL,
 	ParentID            		varchar(6) NULL,
 	Paid                       	bit(1) NOT NULL default 0,
 	PaymentType             	enum('Credit Card', 'Cash', 'Cheque', 'Direct Debit', 'Other') NOT NULL DEFAULT 'Direct Debit',
 	DateDue                  	date NOT NULL,
 	AmountDue                  	decimal(10, 2) NOT NULL DEFAULT 0.00,
 	DatePaid                   	date DEFAULT NULL,
 PRIMARY KEY (PaymentID))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

 --
-- Table structure for table Deposit
--	
CREATE TABLE IF NOT EXISTS Deposit (
 	DepositID               	varchar(6) NOT NULL,
 	DepositPaid             	bit(1) NOT NULL default 0,
 	DepositReturned         	bit(1) NOT NULL default 0,
 	Amount                  	decimal(10, 2) NOT NULL DEFAULT 0.00,
 	DepositPaidDate     		date NOT NULL,
 	DepositRefundedDate 		date DEFAULT NULL,
 PRIMARY KEY (DepositID))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;
 
 --
-- Table structure for table VoucherSchemeRegister
--	
CREATE TABLE IF NOT EXISTS VoucherSchemeRegister (
 	VoucherSchemeID             varchar(6) NOT NULL,
 	VoucherSchemeProviderId 	varchar(6) NOT NULL,
 	ChildID                     varchar(6) NOT NULL,
 	ParentID                    varchar(6) NOT NULL,
 	IntendedStartDate           date NOT NULL,
 	RegisteredWithCouncil       bit(1) NOT NULL default 0,
 	DateSigned                  date NOT NULL,
 PRIMARY KEY (VoucherSchemeID))ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

 --
-- Table structure for table ChildEmergencyContact
--	
 CREATE TABLE IF NOT EXISTS ChildEmergencyContact (
 	ChildID                        	varchar(6) NOT NULL,
 	EmergencyContactID 				varchar(6) NOT NULL,
 	Relationship                    varchar(20) NOT NULL DEFAULT 'Relative')
ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
--  Constraints for table Child
--	
ALTER TABLE Child ADD CONSTRAINT Occupies FOREIGN KEY (RoomName) REFERENCES Room (RoomName) 
	ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE Child ADD CONSTRAINT ResidesAt FOREIGN KEY (AddressID) REFERENCES Address (AddressID) 
	ON UPDATE CASCADE ON DELETE RESTRICT;

--
--  Constraints for table Register
--	
ALTER TABLE Register ADD CONSTRAINT Enrolls FOREIGN KEY (ChildID) REFERENCES Child (ChildID) 
	ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE Register ADD CONSTRAINT RequiresConsent FOREIGN KEY (ConsentID) REFERENCES Consent (ConsentID) 
	ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE Register ADD CONSTRAINT RequiresDeposit FOREIGN KEY (DepositID) REFERENCES Deposit (DepositID) 
	ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE Register ADD CONSTRAINT RequiresDoctor FOREIGN KEY (DoctorID) REFERENCES Doctor (DoctorID) 
	ON UPDATE CASCADE ON DELETE RESTRICT;

--
--  Constraints for table ChildParent
--	
ALTER TABLE ChildParent ADD CONSTRAINT OffspringOff FOREIGN KEY (ChildID) REFERENCES Child (ChildID)
	ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ChildParent ADD CONSTRAINT ResponsibleFor FOREIGN KEY (ParentID) REFERENCES Parent (ParentID)
	ON UPDATE CASCADE ON DELETE CASCADE;

--
--  Constraints for table ChildEmergencyContact
--	
ALTER TABLE ChildEmergencyContact ADD CONSTRAINT RequiresContact FOREIGN KEY (ChildID) REFERENCES Child (ChildID)
	ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ChildEmergencyContact ADD CONSTRAINT RequiredForEmergency FOREIGN KEY (EmergencyContactID) REFERENCES EmergencyContact (EmergencyContactID)
	ON UPDATE CASCADE ON DELETE CASCADE;

--
--  Constraints for table Consent
--	
ALTER TABLE Consent ADD CONSTRAINT RegistedTo FOREIGN KEY (DoctorID) REFERENCES Doctor (DoctorID)
	ON UPDATE CASCADE ON DELETE RESTRICT;

--
--  Constraints for table Doctor
--	
ALTER TABLE Doctor ADD CONSTRAINT PracticeAt FOREIGN KEY (AddressID) REFERENCES Address (AddressID)	
	ON UPDATE CASCADE ON DELETE RESTRICT;



--
--  Constraints for table EmergencyContact
--	
ALTER TABLE EmergencyContact ADD CONSTRAINT Requires FOREIGN KEY (AddressID) REFERENCES Address (AddressID)
	ON UPDATE RESTRICT ON DELETE RESTRICT;

--
--  Constraints for table MonthlyFee
--	
ALTER TABLE MonthlyFee  ADD CONSTRAINT AccumulatedBy FOREIGN KEY (ChildID) REFERENCES Child (ChildID)
	ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE MonthlyFee ADD CONSTRAINT PaidBy FOREIGN KEY (ParentID) REFERENCES Parent (ParentID)
	ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE MonthlyFee ADD CONSTRAINT calculatedFrom FOREIGN KEY (RoomName) REFERENCES Room (RoomName)
	ON UPDATE RESTRICT ON DELETE RESTRICT;

--
--  Constraints for table MonthlyInvoice
--	
ALTER TABLE MonthlyInvoice ADD CONSTRAINT Discounts FOREIGN KEY (VoucherSchemeID) REFERENCES VoucherSchemeRegister (VoucherSchemeID)
		ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE MonthlyInvoice ADD CONSTRAINT GeneratesFee FOREIGN KEY (FeeID) REFERENCES MonthlyFee (FeeID)
		ON UPDATE RESTRICT ON DELETE RESTRICT;
--
--  Constraints for table VoucherSchemeRegister
--	
ALTER TABLE VoucherSchemeRegister ADD CONSTRAINT Provides FOREIGN KEY (VoucherSchemeProviderId) REFERENCES VoucherSchemeProvider (VoucherSchemeProviderId)
		ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE VoucherSchemeRegister ADD CONSTRAINT Uses FOREIGN KEY (ChildID) REFERENCES Child (ChildID)
		ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE VoucherSchemeRegister ADD CONSTRAINT Accredited FOREIGN KEY (ParentID) REFERENCES Parent (ParentID)
		ON UPDATE CASCADE ON DELETE CASCADE;
		
--
--  Constraints for table Absence
--	
ALTER TABLE Absence ADD CONSTRAINT causes FOREIGN KEY (ChildID) REFERENCES Child (ChildID)
	ON UPDATE CASCADE ON DELETE CASCADE;

--
--  Constraints for table Attendance
--	
ALTER TABLE Attendance ADD CONSTRAINT LocatedIn FOREIGN KEY (RoomName) REFERENCES Room (RoomName)
	ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Attendance ADD CONSTRAINT Attends FOREIGN KEY (ChildID) REFERENCES Child (ChildID)
	ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE Attendance ADD CONSTRAINT Generates FOREIGN KEY (FeeID) REFERENCES MonthlyFee (FeeID)
	ON UPDATE CASCADE ON DELETE SET NULL;
		
--
--  Constraints for table PaymentHistory
--	
ALTER TABLE PaymentHistory ADD CONSTRAINT Requests FOREIGN KEY (InvoiceID) REFERENCES MonthlyInvoice (InvoiceID)
		ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE PaymentHistory ADD CONSTRAINT PaymentBy FOREIGN KEY (ParentID) REFERENCES Parent (ParentID)
		ON UPDATE CASCADE ON DELETE RESTRICT;


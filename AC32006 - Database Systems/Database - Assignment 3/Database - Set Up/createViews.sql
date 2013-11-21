-- MySQL SCHEMA - Kyle Harrison
--
-- Host: arlia.computing.dundee.ac.uk   	Database: 12ac3d16
-- User: 12ac3u16       	 				Password: 111aaa 
-- ------------------------------------------------------
-- Tested on Server version	5.5.27 - MySQL Community Server 

use tbnc;

-- ChildrenView
CREATE VIEW ChildrenView
   AS
  SELECT ChildID,FirstName,Surname,DOB,StartDate,LeavingDate,RoomName,AddressID
  FROM child
  ORDER BY ChildID DESC;
  
-- AddressesView
CREATE VIEW AddressesView
   AS
  SELECT AddressID,AddressLine,AddressLineTwo,City,County,Postcode,Country
  FROM address
  ORDER BY AddressID DESC;
  
-- RegisterView
 CREATE VIEW RegisterView
   AS
  SELECT RegisterID,ChildID,ConsentID,DepositID,DoctorID,PlacementType,PreferedStartDate
  FROM register
  ORDER BY RegisterID DESC;
  
-- ParentRelationshipView
  CREATE VIEW ParentRelationshipView AS
	SELECT child.ChildID,child.FirstName,child.Surname,child.DOB,
		child.StartDate,child.LeavingDate,child.RoomName,child.AddressID,
		CONCAT( parent.Title, ' ', parent.FirstName, ' ', parent.Surname) AS FullName,
		parent.HomeTelephone, parent.WorkTelephone, parent.MobileTelephone, parent.Email, parent.NamedKnownatWork	
	FROM child 
INNER JOIN childparent ON ChildParent.ChildID = child.ChildID
INNER JOIN parent ON parent.ParentID = childparent.ParentID
	ORDER BY child.ChildID DESC;

-- ParentView
  CREATE VIEW ParentView
   AS
  SELECT ParentID,
	CONCAT( parent.Title, ' ', parent.FirstName, ' ', parent.Surname) AS FullName,
	HomeTelephone,WorkTelephone,MobileTelephone,Email,NamedKnownatWork
  FROM Parent
  ORDER BY ParentID DESC;
  
-- EmergencyContactView
  CREATE VIEW EmergencyContactView
   AS
  SELECT EmergencyContactID,
	CONCAT( EmergencyContact.FirstName, ' ', EmergencyContact.Surname) AS FullName,
	 HomePhone, MobilePhone, 
	 EmergencyContact.AddressID,address.address.AddressLineTwo,address.AddressLineTwo,address.City,address.County, address.Postcode,address.Country
  FROM EmergencyContact
 INNER JOIN address ON EmergencyContact.AddressID = address.AddressID
  ORDER BY EmergencyContactID DESC;
  
-- ChildEmergencyContactView
-- Retrieves Emegency Contact Details for a Child
  CREATE VIEW ChildEmergencyContactView AS
	SELECT child.ChildID,
		CONCAT( child.FirstName, ' ', child.Surname) AS ChildFullName,
		child.DOB,child.StartDate,child.LeavingDate,child.RoomName,child.AddressID,
		CONCAT( EmergencyContact.FirstName, ' ', EmergencyContact.Surname) AS ContactFullName, HomePhone, MobilePhone
	FROM child 
INNER JOIN ChildEmergencyContact ON child.ChildID = ChildEmergencyContact.ChildID
INNER JOIN EmergencyContact ON EmergencyContact.EmergencyContactID = ChildEmergencyContact.EmergencyContactID
	ORDER BY child.ChildID DESC;
	
	
-- ChildEmergencyView
-- Used to retrieve all emergency contacts for parents	
  CREATE VIEW ChildEmergencyView AS
	SELECT childemergencycontact.ChildID,childemergencycontact.EmergencyContactID,
	childemergencycontact.Relationship, 
	CONCAT( emergencycontact.FirstName, ' ', emergencycontact.Surname) AS contactFullName, emergencycontact.HomePhone,emergencycontact.MobilePhone, emergencycontact.AddressID,address.AddressLine, address.AddressLineTwo,address.City,address.County, address.Postcode,address.Country 
		FROM childemergencycontact 	
	INNER JOIN emergencycontact ON childemergencycontact.EmergencyContactID = 		emergencycontact.EmergencyContactID
	INNER JOIN address ON emergencycontact.AddressID = address.AddressID
		ORDER BY childemergencycontact.EmergencyContactID DESC;
	
	
	
-- VoucherSchemeProviderView
  CREATE VIEW VoucherSchemeProviderView
   AS
  SELECT VoucherSchemeProviderId,
	Name, Discount
  FROM VoucherSchemeProvider
  ORDER BY VoucherSchemeProviderId DESC;	
	
-- VoucherSchemeRegisterView
  CREATE VIEW VoucherSchemeRegisterView
   AS
  SELECT VoucherSchemeID, VoucherSchemeProviderId
	ChildID, ParentID,IntendedStartDate,RegisteredWithCouncil,DateSigned
  FROM VoucherSchemeRegister
  ORDER BY VoucherSchemeID DESC;	

-- VoucherView
  CREATE VIEW VoucherView AS
	SELECT 	VoucherSchemeRegister.VoucherSchemeProviderId,
		VoucherSchemeRegister.ChildID, CONCAT( child.FirstName, ' ', child.Surname) AS ChildFullName,
		VoucherSchemeRegister.ParentID,CONCAT( parent.FirstName, ' ', parent.Surname) AS ParentFullName,
		VoucherSchemeREgister.IntendedStartDate,VoucherSchemeRegister.RegisteredWithCouncil,
		VoucherSchemeRegister.DateSigned
	FROM VoucherSchemeRegister 
INNER JOIN Child ON VoucherSchemeRegister.ChildID = child.ChildID
INNER JOIN Parent ON VoucherSchemeRegister.ParentID = parent.ParentID
	ORDER BY VoucherSchemeRegister.VoucherSchemeID DESC;	
  
-- MonthlyFeeView
  CREATE VIEW MonthlyFeeView
   AS
  SELECT FeeID,
	DateCharged, ChildID,ParentID,RoomName
  FROM MonthlyFee
  ORDER BY FeeID DESC;	
  
  -- MonthlyInvoiceView
  CREATE VIEW MonthlyInvoiceView
   AS
  SELECT InvoiceID,
	FeeID, VoucherSchemeID,PayDate,LateFees,Outstanding,Deductions
  FROM MonthlyInvoice
  ORDER BY InvoiceID DESC;	
  
    -- PaymentHistoryView
  CREATE VIEW PaymentHistoryView
   AS
  SELECT PaymentID,
	InvoiceID,ParentID,Paid,PaymentType,DateDue,AmountDue,DatePaid
  FROM PaymentHistory
  ORDER BY PaymentID DESC;	
  
      -- DepositView
  CREATE VIEW DepositView
   AS
  SELECT DepositID,
	DepositPaid,DepositReturned,Amount,DepositPaidDate,DepositRefundedDate
  FROM Deposit
  ORDER BY DepositID DESC;	
  
   -- AttendanceView
  CREATE VIEW AttendanceView
   AS
  SELECT AttendanceID,
	ChildID,FeeID,RoomName,WeekStart,Teas,
	Monday,Tuesday,Wednesday,Thursday,Friday
  FROM Attendance
  ORDER BY AttendanceID DESC;	
  
   -- RoomView
  CREATE VIEW RoomView
   AS
  SELECT RoomName,
	DailyCharge,WeeklyCharge,TeaCharge,RoomVacancy,
	AgeGroup,StaffRatio
  FROM Room
  ORDER BY RoomName DESC;	
  
  -- AbsenceView
  CREATE VIEW AbsenceView
   AS
  SELECT Absence.AbsenceID,
	Absence.ChildID, CONCAT( child.FirstName, ' ', child.Surname) AS ChildFullName,
	Absence.AbsenceDate
  FROM Absence
  INNER JOIN Child ON Absence.ChildID = Child.ChildID
  ORDER BY AbsenceID DESC;	
  
  -- DoctorView
  CREATE VIEW DoctorView
   AS
  SELECT Doctor.DoctorID,
	CONCAT( 'Dr ',Doctor.FirstName, ' ', Doctor.Surname) AS DoctorFullName,
	Doctor.AddressID, 
	Address.AddressLine,Address.AddressLineTwo,Address.City,
	Address.County,Address.Postcode,Address.Country
  FROM Doctor
  INNER JOIN Address ON Doctor.AddressID = Address.AddressID
  ORDER BY DoctorID DESC;	
  
   -- `View
  CREATE VIEW ConsentView
   AS
  SELECT ConsentID,
	DoctorID,NurseryPolicies,NurseryPoliciesDate,
	AdministerCapol,AdministerCapolDate,
	ApplySunCream,ApplySunCreamDate,
	CoachTrips, NurseryPhotos, PhotosTaken,
	PublicTransport,PublicityPhoto,
	ReceiveMedicalTreatmentDate,RecieveMedicalTreatment,
	ReportPhoto,Walks,WebsitePhotos
  FROM Consent
  ORDER BY ConsentID DESC;
   
  
  
  

  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



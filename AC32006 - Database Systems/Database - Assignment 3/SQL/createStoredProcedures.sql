    -- MySQL SCHEMA - Kyle Harrison
--
-- Host: arlia.computing.dundee.ac.uk   	Database: 12ac3d16
-- User: 12ac3u16       	 				Password: 111aaa 
-- ------------------------------------------------------
-- Tested on Server version	5.5.27 - MySQL Community Server 

use tbnc;
	
	-- Adding Child
	DELIMITER //  
      
    CREATE PROCEDURE `proc_AddChild` (IN FirstName VARCHAR(30), IN Surname VARCHAR(30),
	IN DOB DATE,IN StartDate DATE, IN LeavingDate DATE, IN RoomName VARCHAR(6), IN AddressID (6))  
    BEGIN  
	     
		DECLARE  HighestChildID VARCHAR(6);
		SET HighestChildID = SELECT MAX(ChildID) FROM Child;

		SUBSTRING(str FROM pos)
		
        IF variable1 = 0 THEN  
            SELECT variable1;  
        END IF;  
      
        IF param1 = 0 THEN  
            SELECT 'Parameter value = 0';  
        ELSE  
            SELECT 'Parameter value <> 0';  
        END IF;  
    END //  
	
		
	-- call proc_FindChildID(@ChildID);
		DELIMITER //  
      
    CREATE PROCEDURE `proc_FindChildID` (OUT CID VARCHAR(6))  
    BEGIN  
	     		
		SELECT MAX(ChildID) INTO @CID FROM Child;
		SET @CID = SUBSTRING(@CID FROM 1); 
		SELECT @CID;
    END //  
	
	-- UPDATE Child
		use tbnc;

		DELIMITER //
		CREATE PROCEDURE `tbnc`.`updateChild_pro` (
		IN _ChildID varchar(6),
		IN _FirstName varchar(30),
		IN _Surname varchar(30),
		IN _DOB DATE,
		IN _StartDate DATE,
		IN _LeavingDate DATE,
		IN _RoomName SET('Baby Room','Polar Room','Panda Room','Teddys Transformers','Daisys Discoverers','Oakleys Explorers'),
		IN _AddressID varchar(6)
		)
		BEGIN
		UPDATE child SET
		FirstName = _FirstName,
		Surname = _Surname,
		DOB = _DOB,
		StartDate = _StartDate,
		LeavingDate = _LeavingDate,
		RoomName = _RoomName,
		AddressID = _AddressID
		WHERE ChildID = _ChildID;
		END
		//
		DELIMITER ;
		
		

		
		
-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateDoctor_pro`(
		IN _DoctorID varchar(6),
		IN _FirstName varchar(30),
		IN _Surname varchar(30),
		In _AddressID varchar(6)
		)
BEGIN
		UPDATE doctor SET
		FirstName = _FirstName,
		Surname = _Surname,
    AddressID = _AddressID
		WHERE DoctorID = _DoctorID;
		END
	
	
-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------	
	
		-- UPDATE Consent
		use tbnc;

		DELIMITER //
		CREATE PROCEDURE `tbnc`.`updateConsent_pro` (
		IN _ConsentID varchar(6),
		IN _DoctorID varchar(6),
		IN _NurseryPolicies BIT(1),
		IN _NurseryPoliciesDate DATE,		
		IN _AdministerCapol BIT(1),
		IN _AdministerCapolDate DATE,
		IN _ApplySunCream BIT(1),
		IN _ApplySunCreamDate DATE,
		IN _CoachTrips BIT(1),
		IN _NurseryPhotos BIT(1),
		IN _PhotosTaken BIT(1),
		IN _PublicTransport BIT(1),
		IN _PublicityPhoto BIT(1),
		IN _ReceiveMedicalTreatmentDate DATE,
		IN _RecieveMedicalTreatment BIT(1),
		IN _ReportPhoto BIT(1),
		IN _Walks BIT(1),
		IN _WebsitePhotos BIT(1)
		)
		BEGIN
		UPDATE consent SET
		ConsentID = _ConsentID ,
		DoctorID = _DoctorID,
		NurseryPolicies = _NurseryPolicies,
		NurseryPoliciesDate = _NurseryPoliciesDate,
		AdministerCapol = AdministerCapol,
		AdministerCapolDate = _AdministerCapolDate ,
		ApplySunCream = _ApplySunCream,
		ApplySunCreamDate = _ApplySunCreamDate, 
		CoachTrips = _CoachTrips,
		NurseryPhotos = _NurseryPhotos,
		PhotosTaken = _PhotosTaken, 
		PublicTransport = _PublicTransport,
		PublicityPhoto = _PublicityPhoto,
		ReceiveMedicalTreatmentDate =  _ReceiveMedicalTreatmentDate,
		RecieveMedicalTreatment = _RecieveMedicalTreatment, 
		ReportPhoto = _ReportPhoto, 
		Walks = _Walks, 
		WebsitePhotos = _WebsitePhotos
		WHERE ConsentID = _ConsentID;
		END
		//
		DELIMITER ;
		
		
-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateAddress_pro`(
		IN _AddressID varchar(6),
		IN _AddressLine varchar(50),
		IN _AddressLineTwo varchar(50),
		In _City varchar(35),
		In _County varchar(30),
		In _Postcode varchar(8),
		In _Country varchar(30)
		)
BEGIN
		UPDATE address SET
		AddressID = _AddressID,
		AddressLine= _AddressLine,
		AddressLineTwo = _AddressLineTwo,
		City = _City,
		County= _County,
		Postcode= _Postcode,
		Country = _Country
		WHERE AddressID = _AddressID;
		END
	
	
	

 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
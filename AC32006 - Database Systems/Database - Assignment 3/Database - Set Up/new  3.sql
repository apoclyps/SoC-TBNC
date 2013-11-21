DELIMITER //
CREATE PROCEDURE `tbnc`.`updateChild_pro` (
IN _ChildID varchar(6),
IN _FirstName varchar(30),
IN _Surname varchar(30),
IN _DOB DATE,
IN _StartDate DATE,
IN _LeavingDate DATE,
IN _RoomName SET('Baby Room','Polar Room','Panda Room',"Teddys Transformers","Daisys Discoverers","Oakleys Explorers"),
IN _AddressID varchar(6)
)
BEGIN
UPDATE child SET
FirstName = _FirstName,
Surname = _Surname,
DOB = _DOB,
StartDate = _StartDate,
LeavingDate = _LeavingDate,
RoomName = _RoomName.
AddressID = _AddressID
WHERE ChildID = _ChildID;
END
//
DELIMITER ;

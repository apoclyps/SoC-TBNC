# update room prc
# updates room information
# EXAMPLE: CALL updateRoom_prc ('Baby Room', 900, 55.50, 55.50, 55.50);
DELIMITER $$
CREATE PROCEDURE `12ac3d24`.`updateRoom_prc` (
IN _name set('Baby Room','Polar Room','Panda Room',"Teddy's Transformers","Daisy's Discoverers","Oakley's Explorers"),
IN _capacity INT,
IN _dailyCharge DECIMAL(5,2),
IN _weeklyCharge DECIMAL(5,2),
IN _teaCharge DECIMAL(5,2)
)
BEGIN
UPDATE room SET
capacity = _capacity,
dailyCharge = _dailyCharge,
weeklyCharge = _weeklyCharge,
teaCharge = _teaCharge
WHERE name = _name;
END
$$
DELIMITER ;

1:48am
Sam Hood
#ATTENDANCE FORM VIEW
CREATE VIEW `12ac3d24`.`admin_attendanceform_view` AS
SELECT id, firstName, initials, surname, Room_name, day
FROM child
JOIN scheduled_day_to_attend ON scheduled_day_to_attend.Child_id = id;
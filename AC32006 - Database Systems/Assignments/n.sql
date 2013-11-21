USE 12ac3d16;
CREATE VIEW RoomChangeDetails
AS
SELECT child.FirstName || child.Surname AS 'Child Name', child.RoomName, room.RoomVacancy
FROM child
INNER JOIN room ON room.RoomName = child.RoomName
ORDER BY child.Surname DESC;
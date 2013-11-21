CREATE VIEW MonthlyFeeDetails1
AS
SELECT child.FirstName || child.Surname AS 'Child Name', register.PlacementType, room.RoomName, room.DailyCharge, room.WeeklyCharge, attendance.Teas, room.TeaCharge
FROM child
INNER JOIN register ON register.ChildID = child.ChildID
INNER JOIN attendance ON attendance.ChildId = child.ChildID
INNER JOIN room ON room.RoomName = child.RoomName
ORDER BY child.Surname DESC;
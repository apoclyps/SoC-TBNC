USE 12ac3d16;
CREATE VIEW MonthlyInvoiceDetails
AS
SELECT child.FirstName || child.Surname AS 'Child Name', register.PlacementType, room.RoomName, room.DailyCharge, room.WeeklyCharge, attendance.Teas, room.TeaCharge, voucherschemeprovider.Discount, monthlyinvoice.PayDate, monthlyinvoice.Latefees 
FROM child
INNER JOIN register ON register.ChildID = child.ChildID
INNER JOIN attendance ON attendance.ChildId = child.ChildID
INNER JOIN room ON room.RoomName = child.RoomName
INNER JOIN monthlyfee ON monthlyfee.ChildID = child.ChildID
INNER JOIN monthlyinvoice ON monthlyinvoice.FeeID = monthlyfee.FeeID
INNER JOIN voucherschemeregister ON voucherschemeregister.ChildID = child.ChildID
INNER JOIN voucherschemeprovider ON voucherschemeprovider.voucherschemeproviderID = voucherschemeregister.voucherschemeproviderID
ORDER BY child.Surname DESC;
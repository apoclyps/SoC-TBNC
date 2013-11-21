-- MySQL SCHEMA - Candice Stewart
--
-- Host: arlia.computing.dundee.ac.uk   	Database: 12ac3d16
-- User: 12ac3u16       	 				Password: 111aaa 
-- ------------------------------------------------------

CREATE VIEW MonthlyFeeDetails
AS
SELECT child.FirstName || child.Surname AS 'Child Name', register.PlacementType, room.RoomName, room.DailyCharge, room.WeeklyCharge, attendance.Teas, room.TeaCharge
FROM child, room ,register, attendance
INNER JOIN register ON register.ChildID = child.ChildID
INNER JOIN attendance ON attendance.ChildId = child.ChildID
INNER JOIN room ON room.RoomName = child.RoomName
ORDER BY child.Surname DESC;

-----------

CREATE VIEW MonthlyInvoiceDetails
AS
SELECT child.FirstName || child.Surname AS 'Child Name', register.PlacementType, room.RoomName, room.DailyCharge, room.WeeklyCharge, attendance.Teas, room.TeaCharge, voucherschemeprovider.Discount, monthlyinvoice.PayDate, monthlyinvoice.Latefees 
FROM child
INNER JOIN register ON register.ChildID = child.ChildID
INNER JOIN attendance ON attendance.ChildId = child.ChildID
INNER JOIN room ON room.RoomName = child.RoomName
INNER JOIN monthlyinvoice ON monthlyinvoice.ChildID = childID
INNER JOIN voucherschemeprovider ON voucherschemeprovider.ChildID = childID
ORDER BY child.Surname DESC;

-----------

CREATE VIEW OverdueDetails
AS
SELECT child.FirstName || child.Surname AS 'Child Name', paymenthistory.DateDue, monthlyinvoice.DaysOverdue, monthlyinvoice.LateFees, monthlyinvoice.Overdue
FROM child 
INNER JOIN monthlyfee ON monthlyfee.ChildID = child.ChildID
INNER JOIN monthlyinvoice ON monthlyinvoice.FeeID = monthlyfee.FeeID
INNER JOIN paymenthistory ON monthlyinvoice.InvoiceID = paymenthistory.InvoiceID
ORDER BY child.Surname DESC;

----------- 

CREATE VIEW PayHistoryDetails
AS
SELECT paymenthistory.Payee, paymenthistory.Paid, paymenthistory.PaymentType, paymenthistory.DateDue, paymenthistory.DatePaid, paymenthistory.AmountDue
FROM paymenthistory
ORDER BY payee DESC; 

-----------

CREATE VIEW RoomChangeDetails
AS
SELECT child.FirstName || child.Surname AS 'Child Name', child.RoomName, room.RoomVacancy
FROM child
INNER JOIN room ON room.RoomName = child.RoomName
ORDER BY child.Surname DESC;

-----------


-----------


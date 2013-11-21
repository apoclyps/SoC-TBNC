CREATE VIEW PayHistoryDetails
AS
SELECT paymenthistory.Payee, paymenthistory.Paid, paymenthistory.PaymentType, paymenthistory.DateDue, paymenthistory.DatePaid, paymenthistory.AmountDue
FROM paymenthistory
ORDER BY payee DESC; 
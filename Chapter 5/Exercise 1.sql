/* Murach's SQL Server 2016 for Developers
   Exercise 1 from Chapter 5
*/

SELECT VendorID, SUM(PaymentTotal) AS PaymentSum
FROM Invoices
GROUP BY VendorID

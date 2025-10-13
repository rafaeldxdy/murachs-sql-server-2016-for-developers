/* 
   Murach's SQL Server 2016 for Developers
   Exercise 3 from Chapter 5
*/

SELECT VendorName, COUNT(*) AS InvoiceCount, SUM(InvoiceTotal) AS InvoiceSum
FROM Invoices INNER JOIN Vendors
	ON Invoices.VendorID = Vendors.VendorID
GROUP BY VendorName
ORDER BY InvoiceCount DESC

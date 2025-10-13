/* 
   Murach's SQL Server 2016 for Developers
   Exercise 2 from Chapter 5
*/

SELECT Top 10 VendorName, SUM(PaymentTotal) AS PaymentSum
FROM Vendors INNER JOIN Invoices
	ON Invoices.VendorID = Vendors.VendorID
GROUP BY VendorName
ORDER BY PaymentSum DESC

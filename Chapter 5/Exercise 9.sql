/* 
   Murach's SQL Server 2016 for Developers
   Exercise 9 from Chapter 5
*/

SELECT
	Invoices.VendorID,
	Invoices.InvoiceDate,
	Invoices.InvoiceTotal,
	SUM(InvoiceTotal) OVER (PARTITION BY VendorID) AS VendorTotal,
	COUNT(InvoiceTotal) OVER (PARTITION BY VendorID) AS VendorCount,
	AVG(InvoiceTotal) OVER (PARTITION BY VendorID) AS VendorAVG
FROM
	Invoices

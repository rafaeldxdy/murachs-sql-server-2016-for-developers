/* Murach's SQL Server 2016 for Developers
   Exercise 5 from Chapter 4
*/

USE AP;

SELECT
	VendorName				AS Vendor,
	InvoiceDate				AS [Date],
	InvoiceNumber			AS Number,
	InvoiceSequence         AS [#],
	InvoiceLineItemAmount	AS [Line Item]
FROM Vendors
INNER JOIN Invoices
	ON Vendors.VendorID = Invoices.VendorID
INNER JOIN InvoiceLineItems
	ON InvoiceLineItems.InvoiceID = Invoices.InvoiceID
ORDER BY Vendor, [Date], Number, [#];

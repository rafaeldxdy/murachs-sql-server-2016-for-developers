/* 
   Murach's SQL Server 2016 for Developers
   Exercise 7 from Chapter 5
*/

SELECT
	VendorName,
	AccountDescription,
	COUNT(*) AS LineItemCount,
	SUM(InvoiceLineItemAmount) AS LineItemSum
FROM Vendors 
INNER JOIN Invoices
   ON Vendors.VendorID = Invoices.VendorID
INNER JOIN InvoiceLineItems
   ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
INNER JOIN GLAccounts
   ON InvoiceLineItems.AccountNo = GLAccounts.AccountNo
GROUP BY VendorName, AccountDescription
ORDER BY VendorName, AccountDescription

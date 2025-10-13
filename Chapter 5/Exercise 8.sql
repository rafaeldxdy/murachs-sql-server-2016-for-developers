/* 
   Murach's SQL Server 2016 for Developers
   Exercise 8 from Chapter 5
*/

SELECT VendorName,
       COUNT(DISTINCT InvoiceLineItems.AccountNo) AS [#Accounts]
FROM Vendors 
INNER JOIN Invoices
    ON Vendors.VendorID = Invoices.VendorID
INNER JOIN InvoiceLineItems
    ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
GROUP BY VendorName
HAVING COUNT(DISTINCT InvoiceLineItems.AccountNo) > 1
ORDER BY VendorName;

/* Murach's SQL Server 2016 for Developers
   Exercise 1 from Chapter 6
*/

SELECT DISTINCT VendorName
FROM Vendors JOIN Invoices
	ON vendors.VendorID = Invoices.VendorID
ORDER BY VendorName;

SELECT DISTINCT VendorName
FROM Vendors
WHERE VendorID IN (SELECT VendorID FROM Invoices)
ORDER BY VendorName;

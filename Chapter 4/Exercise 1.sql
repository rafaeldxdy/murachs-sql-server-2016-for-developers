/* Murach's SQL Server 2016 for Developers
   Exercise 1 from Chapter 4
*/

USE AP;

SELECT *
FROM Vendors
INNER JOIN Invoices
ON Vendors.VendorID = Invoices.VendorID

/* Murach's SQL Server 2016 for Developers
   Exercise 3 from Chapter 3
*/

USE AP;

SELECT VendorContactLName + ', ' + VendorContactFName AS [Full Name]
FROM Vendors
ORDER BY VendorContactLName, VendorContactFName;

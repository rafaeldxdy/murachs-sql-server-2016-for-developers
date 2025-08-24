/* Murach's SQL Server 2016 for Developers
   Exercise 1 from Chapter 2
*/

USE AP;

SELECT VendorContactFName, VendorContactLName, VendorName
FROM Vendors
ORDER BY VendorContactLName, VendorContactFName;

/* Murach's SQL Server 2016 for Developers
   Exercise 6 from Chapter 2
*/

USE AP;

SELECT VendorContactLName + ', ' + VendorContactFName AS [Full Name]
FROM Vendors
WHERE VendorContactLName LIKE '[A-C,E]%'
ORDER BY VendorContactLName, VendorContactFName;

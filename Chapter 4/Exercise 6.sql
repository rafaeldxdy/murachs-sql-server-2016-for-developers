/* Murach's SQL Server 2016 for Developers
   Exercise 6 from Chapter 4
*/

USE AP;

SELECT DISTINCT
	V1.VendorID,
	V1.VendorName,
	V1.VendorContactFName + ' ' + V1.VendorContactLName AS [Name]
FROM Vendors AS V1
INNER JOIN Vendors AS V2
	ON (V1.VendorID <> V2.VendorID) AND
	   (V1.VendorContactFName = V2.VendorContactFName)
ORDER BY [Name];

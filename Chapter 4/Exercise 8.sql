/* Murach's SQL Server 2016 for Developers
   Exercise 8 from Chapter 4
*/

USE AP;

	SELECT
		VendorName,
		VendorState
	FROM Vendors
	WHERE VendorState =	'CA'
UNION
	SELECT
		VendorName,
		VendorState = 'Outsite CA'
	FROM Vendors
	WHERE VendorState = 'CA'
ORDER BY VendorName

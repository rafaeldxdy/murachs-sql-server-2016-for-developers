/* 
	Murach's SQL Server 2016 for Developers
	Exercise 8 from Chapter 7
*/

USE AP;

SELECT *
FROM VendorCopy
WHERE VendorState = 'MI'

DELETE FROM VendorCopy
WHERE VendorState = 'MI'

SELECT *
FROM VendorCopy
WHERE VendorState = 'MI'

/* 
	Murach's SQL Server 2016 for Developers
	Exercise 9 from Chapter 7
*/

USE AP;

DELETE VendorCopy
WHERE VendorState NOT IN (
	SELECT DISTINCT VendorState
	FROM VendorCopy JOIN InvoiceCopy
		ON VendorCopy.VendorID = InvoiceCopy.VendorID);

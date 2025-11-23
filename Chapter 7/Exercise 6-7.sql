/* 
	Murach's SQL Server 2016 for Developers
	Exercise 6 and 7 from Chapter 7
*/

USE AP;

/* Duas formas de fazer */
/* Geralmente mais eficiente */
UPDATE InvoiceCopy
SET TermsID = 2
FROM InvoiceCopy
JOIN Vendors ON InvoiceCopy.VendorID = Vendors.VendorID
WHERE DefaultTermsID = 2;

/* Geralmente menos eficiente */
UPDATE InvoiceCopy
SET TermsID = 2
WHERE VendorID IN (
	SELECT VendorID
	FROM VendorCopy
	WHERE DefaultTermsID = 2);

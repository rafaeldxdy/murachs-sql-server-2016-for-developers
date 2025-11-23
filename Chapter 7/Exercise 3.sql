/* 
	Murach's SQL Server 2016 for Developers
	Exercise 3 from Chapter 7
*/

USE AP;

INSERT INTO VendorCopy 
SELECT VendorName, 
       VendorAddress1, 
       VendorAddress2,
       VendorCity, 
       VendorState, 
       VendorZipCode,
       VendorPhone, 
       VendorContactLName, 
       VendorContactFName,
       DefaultTermsID, 
       DefaultAccountNo
FROM Vendors
WHERE VendorState <> 'CA';

SELECT *
FROM VendorCopy;

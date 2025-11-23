/* 
	Murach's SQL Server 2016 for Developers
	Exercise 4 from Chapter 7
*/

USE AP;

UPDATE VendorCopy
SET DefaultAccountNo = 403
WHERE DefaultAccountNo = 400;

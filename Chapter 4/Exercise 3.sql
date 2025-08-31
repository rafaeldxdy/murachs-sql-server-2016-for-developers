/* Murach's SQL Server 2016 for Developers
   Exercise 3 from Chapter 4
*/

USE AP;

SELECT
	VendorName,
	DefaultAccountNo,
	GLAccounts.AccountDescription
FROM Vendors
INNER JOIN GLAccounts
	ON GLAccounts.AccountNo = Vendors.DefaultAccountNo
ORDER BY 
	AccountDescription, 
	VendorName;

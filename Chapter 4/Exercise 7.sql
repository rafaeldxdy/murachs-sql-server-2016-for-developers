/* Murach's SQL Server 2016 for Developers
   Exercise 7 from Chapter 4
*/

USE AP;

SELECT
	GLAccounts.AccountNo,
	AccountDescription
FROM GLAccounts
LEFT JOIN InvoiceLineItems
	ON InvoiceLineItems.AccountNo = GLAccounts.AccountNo
WHERE InvoiceLineItems.AccountNo IS NULL
ORDER BY AccountNo

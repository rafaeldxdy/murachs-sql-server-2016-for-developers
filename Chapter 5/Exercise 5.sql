/* 
   Murach's SQL Server 2016 for Developers
   Exercise 5 from Chapter 5
*/

SELECT GLAccounts.AccountDescription, 
       COUNT(*) AS LineItemCount,
       SUM(InvoiceLineItemAmount) AS LineItemSum
FROM GLAccounts 
INNER JOIN InvoiceLineItems
  ON GLAccounts.AccountNo = InvoiceLineItems.AccountNo
INNER JOIN Invoices
  ON Invoices.InvoiceID = InvoiceLineItems.InvoiceID
WHERE Invoices.InvoiceDate BETWEEN '2015-12-01' AND '2016-02-29'
GROUP BY GLAccounts.AccountDescription
HAVING COUNT(*) > 1
ORDER BY LineItemCount DESC

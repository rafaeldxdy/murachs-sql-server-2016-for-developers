/* 
   Murach's SQL Server 2016 for Developers
   Exercise 4 from Chapter 5
*/

SELECT GLAccounts.AccountDescription, 
       COUNT(*) AS LineItemCount,
       SUM(InvoiceLineItemAmount) AS LineItemSum
FROM GLAccounts INNER JOIN InvoiceLineItems
  ON GLAccounts.AccountNo = InvoiceLineItems.AccountNo
GROUP BY GLAccounts.AccountDescription
HAVING COUNT(*) > 1
ORDER BY LineItemCount DESC

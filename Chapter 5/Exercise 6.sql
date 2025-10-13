/* 
   Murach's SQL Server 2016 for Developers
   Exercise 6 from Chapter 5
*/

SELECT AccountNo, 
       SUM(InvoiceLineItemAmount) AS TotalAmountInvoiced
FROM InvoiceLineItems
GROUP BY AccountNo WITH ROLLUP

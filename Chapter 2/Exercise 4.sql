/* Murach's SQL Server 2016 for Developers
   Exercise 4 from Chapter 2
*/

USE AP;

SELECT InvoiceTotal,
       0.1 * InvoiceTotal AS [10% Invoice Total],
       InvoiceTotal  + (0.1 * InvoiceTotal) AS [InvoiceTotal + 10%]
FROM Invoices
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 1000
ORDER BY InvoiceTotal DESC

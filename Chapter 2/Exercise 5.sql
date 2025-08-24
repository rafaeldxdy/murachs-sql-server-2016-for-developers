/* Murach's SQL Server 2016 for Developers
   Exercise 5 from Chapter 2
*/

USE AP;

SELECT InvoiceNumber AS Number,
       InvoiceTotal AS Total,
       (PaymentTotal + CreditTotal) AS Credits,
       InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance
FROM Invoices
WHERE InvoiceTotal BETWEEN 500 AND 10000;

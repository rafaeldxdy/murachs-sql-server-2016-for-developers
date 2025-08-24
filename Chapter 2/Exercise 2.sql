/* Murach's SQL Server 2016 for Developers
   Exercise 2 from Chapter 2
*/

USE AP;

SELECT InvoiceNumber AS Number,
       InvoiceTotal AS Total,
       (PaymentTotal + CreditTotal) AS Credits,
       InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance
FROM Invoices;

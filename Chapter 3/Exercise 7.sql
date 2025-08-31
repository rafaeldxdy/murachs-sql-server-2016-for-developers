/* Murach's SQL Server 2016 for Developers
   Exercise 7 from Chapter 3
*/

USE AP;

SELECT *
FROM Invoices
WHERE ((InvoiceTotal - PaymentTotal - CreditTotal <= 0) AND PaymentDate IS NULL) OR
      ((InvoiceTotal - PaymentTotal - CreditTotal > 0) AND PaymentDate IS NOT NULL);

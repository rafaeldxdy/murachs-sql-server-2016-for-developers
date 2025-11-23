/* 
	Murach's SQL Server 2016 for Developers
	Exercise 5 from Chapter 7
*/

USE AP;

UPDATE InvoiceCopy
SET PaymentDate = GETDATE(),
    PaymentTotal = InvoiceTotal - CreditTotal    
WHERE InvoiceTotal - CreditTotal - PaymentTotal > 0;

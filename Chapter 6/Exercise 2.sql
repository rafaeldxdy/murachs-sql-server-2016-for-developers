/* 
	Murach's SQL Server 2016 for Developers
	Exercise 2 from Chapter 6
*/

SELECT InvoiceNumber, PaymentTotal
FROM Invoices
WHERE PaymentTotal > (
	SELECT AVG(PaymentTotal) FROM Invoices WHERE PaymentTotal <> 0)

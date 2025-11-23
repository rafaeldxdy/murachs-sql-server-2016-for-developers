/* 
	Murach's SQL Server 2016 for Developers
	Exercise 2 from Chapter 7
*/

USE AP;

INSERT INTO InvoicesCopy (VendorID, InvoiceTotal, TermsID, InvoiceNumber, PaymentTotal, InvoiceDueDate, InvoiceDate, CreditTotal, PaymentDate)
VALUES (32, 434.58, 2, 'AX-014-027', 0.00, '07/8/2016', '6/21/2016', 0.00, NULL);

SELECT *
FROM InvoicesCopy;

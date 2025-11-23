/* 
	Murach's SQL Server 2016 for Developers
	Exercise 1 from Chapter 8
*/

SELECT CAST(InvoiceTotal AS DECIMAL(17, 2)) AS CastDecimalInvoiceTotal,
       CAST(InvoiceTotal AS VARCHAR) AS CastVarcharInvoiceTotal,
       CONVERT(DECIMAL(17, 2), InvoiceTotal) AS ConvertDecimalInvoiceTotal,
       CONVERT(VARCHAR, InvoiceTotal, 1) AS ConvertVarcharInvoiceTotal
FROM Invoices;
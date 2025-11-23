/* 
	Murach's SQL Server 2016 for Developers
	Exercise 1 from Chapter 8
*/

SELECT CAST(InvoiceDate AS VARCHAR) CastVarcharInvoiceDate,
       CONVERT(VARCHAR, InvoiceDate, 1) AS ConvertVarcharOneInvoiceDate,
       CONVERT(VARCHAR, InvoiceDate, 10) AS ConvertVarcharTenInvoiceDate,
       CAST(InvoiceDate AS REAL) AS CastRealInvoiceDate
FROM Invoices;

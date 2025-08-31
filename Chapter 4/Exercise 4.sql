/* Murach's SQL Server 2016 for Developers
   Exercise 4 from Chapter 4
*/

USE AP;

SELECT
    VendorName                                   AS [Vendor Name],
    InvoiceNumber                                AS [Invoice Number],
    InvoiceDate                                  AS [Invoice Date],
    InvoiceTotal - (PaymentTotal + CreditTotal)  AS [Balance]
FROM 
    Vendors, Invoices
WHERE 
    Vendors.VendorID = Invoices.VendorID
AND
    InvoiceTotal - (PaymentTotal + CreditTotal) > 0
ORDER BY VendorName;

Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
HINT: GROUP BY

SELECT COUNT(InvoiceId) , invoiceID
FROM invoiceline
GROUP BY invoiceid
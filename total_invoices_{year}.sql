How many Invoices were there in 2009 and 2011?
HINT: COUNT

SELECT COUNT(*)
FROM invoice
WHERE invoicedate BETWEEN "2009-01-01" AND "2011-12-31"
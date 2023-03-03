What are the respective total sales for each of those years?
HINT: SUM


SELECT SUM(total)
FROM invoice
WHERE invoicedate BETWEEN "2009-01-01" AND "2011-12-31"
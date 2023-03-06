Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice

SELECT i.invoiceid, count(il.invoiceid)
FROM invoice i
JOIN invoiceline il
    ON il.invoiceid = i.invoiceid
GROUP BY il.invoiceid
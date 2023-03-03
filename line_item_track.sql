Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT i.invoicelineid, t.name AS TrackName
FROM invoiceline i
JOIN track t
    ON t.trackid = i.trackId
ORDER BY i.InvoiceLineId ASC
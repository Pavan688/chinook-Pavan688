Provide a query that shows the most purchased track(s) of 2013.

-- SELECT COUNT(i.trackid) AS countOfTrackSale, t.name 
-- FROM invoiceline i
-- JOIN track t
--     ON t.trackid = i.trackid
-- JOIN invoice iv
--     ON iv.invoiceid = i.invoiceid
-- WHERE iv.invoicedate BETWEEN "2013-01-01" AND "2013-12-31"
-- GROUP BY i.trackid
-- ORDER BY countOfTrackSale DESC

SELECT i.InvoiceLineId, t.name, COUNT(i.TrackId) AS numberSold
FROM Track t
JOIN InvoiceLine i 
    ON i.TrackId = t.TrackId
JOIN Invoice iv
    ON iv.InvoiceId = i.InvoiceId
WHERE iv.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
GROUP BY t.Name
ORDER BY numberSold DESC
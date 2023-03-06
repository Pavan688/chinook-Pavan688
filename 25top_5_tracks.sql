Provide a query that shows the top 5 most purchased tracks over all.

SELECT i.InvoiceLineId, t.name, COUNT(i.TrackId) AS numberSold
FROM Track t
JOIN InvoiceLine i 
    ON i.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY numberSold DESC
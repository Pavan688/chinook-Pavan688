Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT i.invoicelineid, t.name AS TrackName, a.name as ARTIST 
FROM invoiceline i
JOIN track t
    ON t.trackid = i.trackId
JOIN album
    ON album.albumid = t.albumid
JOIN artist a
    ON a.artistid = album.artistid
ORDER BY i.InvoiceLineId ASC
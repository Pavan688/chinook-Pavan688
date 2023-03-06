Provide a query that shows the top 3 best selling artists.


SELECT at.name, t.name, COUNT(i.TrackId) AS numberSold
FROM Track t
JOIN InvoiceLine i 
    ON i.TrackId = t.TrackId
JOIN album a
    ON a.albumid = t.albumid
JOIN artist at
    ON at.artistid = a.artistid
GROUP BY t.Name
ORDER BY numberSold DESC
Provide a query that shows the most purchased Media Type.


SELECT m.name AS MediaType, COUNT(i.trackid) AS numberSold
FROM Track t
JOIN InvoiceLine i 
    ON i.TrackId = t.TrackId
JOIN  mediatype m
    ON m.mediatypeid = t.mediatypeid
GROUP BY m.name
ORDER BY numberSold DESC



Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre

SELECT t.name AS Song, a.title, m.name AS MediaType, g.name AS Genre, composer, milliseconds,bytes, unitprice
FROM Track t
JOIN album a
    ON a.albumid = t.albumid
JOIN mediatype m
    ON m.mediatypeid = t.mediatypeid
JOIN genre g
    on g.genreid = t.genreid

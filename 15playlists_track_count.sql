Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
Playlist name
Total number of tracks on each playlist


SELECT p.name as PlaylistName, Count(pt.playlistid)
FROM playlist p
JOIN playlisttrack pt
    ON pt.playlistid = p.playlistid
GROUP BY P.Name
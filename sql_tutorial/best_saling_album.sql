SELECT *
FROM ( SELECT ar.Name as 'Artist Name', SUM(t.UnitPrice) as 'Total earned'
  FROM Track t JOIN Album a ON t.AlbumId = a.AlbumId JOIN Artist ar
  ON a.ArtistId = ar.ArtistId
  GROUP BY ar.Name
)
ORDER BY 'Total Earned' DESC;

SELECT a."Name", COUNT(al."ArtistId") as Number_OF_Albums FROM "Album" al
FULL JOIN "Artist" a ON al."ArtistId"= a."ArtistId"
GROUP BY a."Name" ORDER BY a."Name"

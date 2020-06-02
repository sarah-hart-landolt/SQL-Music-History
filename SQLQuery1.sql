SELECT * from Genre;

SELECT * from Artist
ORDER BY ArtistName;

Select 
	song.Title,
	artist.ArtistName
From Song song
Join Artist artist on song.ArtistID = artist.Id;

SELECT
    album.Title,
	artist.ArtistName
FROM Album album
LEFT JOIN Genre genre on Album.GenreId = genre.Id
LEFT JOIN Artist artist on Album.ArtistId = artist.ID
WHERE album.GenreID = 7;

SELECT * from Artist ar
LEFT JOIN Album al on ar.Id = al.ArtistId
LEFT JOIN Genre g on g.id =al.GenreId
WHERE g.Label= 'Soul'    

SELECT 
al.Title
from Album al
LEFT JOIN Song song on al.Id= song.AlbumId 
WHERE song.AlbumId IS NULL  
      
--#1
SELECT * from Genre;
--#2
SELECT * from Artist
ORDER BY ArtistName;

--#3
Select 
	song.Title,
	artist.ArtistName
From Song song
Join Artist artist on song.ArtistID = artist.Id;

--#4
SELECT
    album.Title,
	artist.ArtistName
FROM Album album
LEFT JOIN Genre genre on Album.GenreId = genre.Id
LEFT JOIN Artist artist on Album.ArtistId = artist.ID
WHERE album.GenreID = 7;

--#5
SELECT * from Artist ar
LEFT JOIN Album al on ar.Id = al.ArtistId
LEFT JOIN Genre g on g.id =al.GenreId
WHERE g.Label= 'Jazz'   
or g.Label='Rock'
ORDER BY g.Label 

--#6
SELECT 
al.Title
from Album al
LEFT JOIN Song song on al.Id= song.AlbumId 
WHERE song.AlbumId IS NULL  

--#7
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('St. Vincent', 2005)
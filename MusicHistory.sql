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
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('St. Vincent', 2005);

--#8
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('St. Vincent', '2/24/2014', 4004,'Loma Vista', 1004, 2);
--#9
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Rattlesnake', 334, '2/24/2014', 2, 1004, 1002)
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Birth in Reverse', 313, '2/24/2014', 2, 1004, 1002)
INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Prince Johnny', 436, '2/24/2014', 2, 1004, 1002)

--#10
SELECT a.Title, s.Title 
FROM Album a 
LEFT JOIN Song s ON s.AlbumId = a.Id
WHERE a.Id=1002 

--#11

SELECT * FROM Album
SELECT * FROM Song

SELECT album.Title, Count(song.Id) AS 'Song Count' --something for a count of songs
FROM Album album
JOIN Song song ON song.AlbumId = album.Id
GROUP BY (album.Title)
ORDER BY ('Song Count')

--#12

SELECT artist.ArtistName, Count(song.Id) AS 'Song Count' --something for a count of songs
FROM Artist artist
JOIN Song song ON song.ArtistId = artist.Id
GROUP BY (artist.ArtistName)
ORDER BY ('Song Count')

--#13

SELECT genre.Label, Count(song.Id) AS 'Song Count' --something for a count of songs
FROM Genre genre
JOIN Song song ON song.GenreId = genre.Id
GROUP BY (genre.Label)
ORDER BY ('Song Count')

--#14

SELECT artist.ArtistName, Count(DISTINCT album.Label) AS 'Label Count' --something for a count of songs
FROM Artist artist
JOIN Album album ON artist.Id = album.ArtistId
GROUP BY (artist.ArtistName)
HAVING COUNT(DISTINCT album.Label) > 1
ORDER BY ('Label Count')

--#15

SELECT album.Title, album.AlbumLength 
FROM Album album
WHERE album.AlbumLength = (
        SELECT 
            MAX(AlbumLength)
        FROM
            Album album);

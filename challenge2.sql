select Track.name , Genre.name from Track
inner join Genre on Genre.GenreId = Track.GenreId
where Genre.Name = "Jazz";
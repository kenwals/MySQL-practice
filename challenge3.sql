select Track.name , MediaType.name, Genre.name from Track
inner join Genre on Genre.GenreId = Track.GenreId
inner join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
where Genre.Name = "Soundtrack" and MediaType.name = "Protected AAC audio file";
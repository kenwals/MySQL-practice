select Track.name , MediaType.name
from Track
inner join MediaType on Track.MediaTypeId = MediaType.MediaTypeId;
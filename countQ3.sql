SELECT COUNT(MediaTypeID) , Name
FROM MediaType
GROUP BY Name
ORDER BY COUNT(MediaTypeID) desc;
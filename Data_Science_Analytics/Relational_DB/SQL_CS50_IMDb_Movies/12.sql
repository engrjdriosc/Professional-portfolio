SELECT movies.title
FROM movies
    INNER JOIN stars ON stars.movie_id = movies.id
    INNER JOIN people ON people.id = stars.person_id
WHERE people.name IN ('Bradley Cooper', 'Jennifer Lawrence')
GROUP BY movies.title
HAVING COUNT(movies.title) > 1;

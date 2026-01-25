SELECT movies.title
FROM movies
INNER JOIN stars ON stars.movie_id = movies.id
INNER JOIN ratings ON movies.id = ratings.movie_id
WHERE stars.person_id IN (SELECT stars.person_id
                            FROM stars JOIN people ON stars.person_id = people.id
                            WHERE people.name = 'Chadwick Boseman')
ORDER BY ratings.rating DESC
LIMIT 5;

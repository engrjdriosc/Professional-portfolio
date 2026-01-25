SELECT DISTINCT people.name
FROM people
    JOIN stars ON people.id = stars.person_id
WHERE stars.movie_id IN (SELECT movies.id
                            FROM movies
                            INNER JOIN stars ON stars.movie_id = movies.id
                            INNER JOIN people ON people.id = stars.person_id
                            WHERE people.name = 'Kevin Bacon' AND people.birth = 1958)
AND NOT people.name = 'Kevin Bacon';

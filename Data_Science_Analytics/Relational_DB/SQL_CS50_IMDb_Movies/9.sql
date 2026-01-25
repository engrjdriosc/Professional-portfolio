SELECT people.name FROM people JOIN (SELECT stars.person_id FROM stars JOIN movies ON stars.movie_id = movies.id WHERE movies.year = 2004) ON people.id = person_id ORDER BY people.birth;

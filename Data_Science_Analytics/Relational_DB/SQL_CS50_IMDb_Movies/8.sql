SELECT people.name FROM people JOIN (SELECT stars.person_id FROM stars JOIN movies ON stars.movie_id = movies.id WHERE movies.title = 'Toy Story') ON people.id = person_id;

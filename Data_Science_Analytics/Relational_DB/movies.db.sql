BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "directors" (
	"movie_id"	INTEGER NOT NULL,
	"person_id"	INTEGER NOT NULL,
	FOREIGN KEY("movie_id") REFERENCES "movies"("id"),
	FOREIGN KEY("person_id") REFERENCES "people"("id")
);
CREATE TABLE IF NOT EXISTS "movies" (
	"id"	INTEGER,
	"title"	TEXT NOT NULL,
	"year"	NUMERIC,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "people" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"birth"	NUMERIC,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "ratings" (
	"movie_id"	INTEGER NOT NULL,
	"rating"	REAL NOT NULL,
	"votes"	INTEGER NOT NULL,
	FOREIGN KEY("movie_id") REFERENCES "movies"("id")
);
CREATE TABLE IF NOT EXISTS "stars" (
	"movie_id"	INTEGER NOT NULL,
	"person_id"	INTEGER NOT NULL,
	FOREIGN KEY("movie_id") REFERENCES "movies"("id"),
	FOREIGN KEY("person_id") REFERENCES "people"("id")
);
COMMIT;

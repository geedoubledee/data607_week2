DROP TABLE IF EXISTS _Movies;
DROP TABLE IF EXISTS _Directors;
DROP TABLE IF EXISTS _Movies_to__Directors;
DROP TABLE IF EXISTS _Genres;
DROP TABLE IF EXISTS _Movies_to__Genres;
DROP TABLE IF EXISTS _Reviewers;
DROP TABLE IF EXISTS _Ratings;

CREATE TABLE _Movies
(
	id int AUTO_INCREMENT PRIMARY KEY,
    Movie varchar(50) NOT NULL UNIQUE,
    Released int NOT NULL,
    Length_Minutes int NOT NULL
);

INSERT INTO _Movies(Movie, Released, Length_Minutes)
VALUES
	("M3GAN", 2023, 102),
	("The Menu", 2022, 107),
	("Barbarian", 2022, 102),
	("Glass Onion", 2022, 139),
	("Tár", 2022, 158),
	("Aftersun", 2022, 102);
    
CREATE TABLE _Directors
(
	id int AUTO_INCREMENT PRIMARY KEY,
    Director varchar(50) NOT NULL
);

INSERT INTO _Directors(Director)
VALUES
	("Gerard Johnstone"),
	("Mark Mylod"),
	("Zach Cregger"),
	("Rian Johnson"),
	("Todd Field"),
	("Charlotte Wells");

CREATE TABLE _Movies_to__Directors
(
	Movie_id int REFERENCES _Movies(id),
    Director_id int REFERENCES _Directors(id),
    CONSTRAINT id PRIMARY KEY(Movie_id, Director_id)
);

INSERT INTO _Movies_to__Directors(Movie_id, Director_id)
VALUES
	(1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);
    
CREATE TABLE _Genres
(
	id int AUTO_INCREMENT PRIMARY KEY,
    Genre varchar(50) NOT NULL
);

INSERT INTO _Genres(Genre)
VALUES
	("Horror"),
	("Sci-Fi"),
	("Thriller"),
	("Mystery"),
	("Comedy"),
	("Crime"),
	("Drama"),
	("Music");

CREATE TABLE _Movies_to__Genres
(
	Movie_id int REFERENCES _Movies(id),
    Genre_id int REFERENCES _Genres(id),
    CONSTRAINT id PRIMARY KEY(Movie_id, Genre_id)
);

INSERT INTO _Movies_to__Genres(Movie_id, Genre_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 1),
	(3, 4),
	(3, 3),
	(4, 5),
	(4, 6),
	(4, 7),
	(5, 7),
	(5, 8),
	(6, 7);

CREATE TABLE _Reviewers
(
	id int AUTO_INCREMENT PRIMARY KEY,
    Reviewer varchar(50) NOT NULL
);

INSERT INTO _Reviewers(Reviewer)
VALUES
	("Glen"),
	("Sebastian"),
	("Alex"),
	("Victoria"),
	("Javin"),
	("Matt"),
    ("Anne"),
	("Grifin"),
	("Claire"),
	("Vicki"),
	("Dan"),
	("Frankie");
    
CREATE TABLE _Ratings
(
	Movie_id int REFERENCES _Movies(id),
    Reviewer_id int REFERENCES _Reviewers(id),
    CONSTRAINT id PRIMARY KEY(Movie_id, Reviewer_id),
    Rating int
);

INSERT INTO _Ratings(Movie_id, Reviewer_id, Rating)
VALUES
	(1, 1, NULL),
	(1, 2, NULL),
	(1, 3, NULL),
	(1, 4, NULL),
	(1, 5, NULL),
	(1, 6, NULL),
	(1, 7, NULL),
	(1, 8, NULL),
	(1, 9, NULL),
	(1, 10, NULL),
	(1, 11, NULL),
	(1, 12, NULL),
	(2, 1, 4),
	(2, 2, 4),
	(2, 3, NULL),
	(2, 4, NULL),
	(2, 5, 4),
	(2, 6, NULL),
	(2, 7, 4),
	(2, 8, NULL),
	(2, 9, NULL),
	(2, 10, 4),
	(2, 11, 2),
	(2, 12, NULL),
	(3, 1, 5),
	(3, 2, 5),
	(3, 3, NULL),
	(3, 4, NULL),
	(3, 5, 4),
	(3, 6, NULL),
	(3, 7, NULL),
	(3, 8, NULL),
	(3, 9, NULL),
	(3, 10, 5),
	(3, 11, 5),
	(3, 12, NULL),
	(4, 1, 4),
	(4, 2, 3),
	(4, 3, NULL),
	(4, 4, 3),
	(4, 5, 3),
	(4, 6, NULL),
	(4, 7, 3),
	(4, 8, NULL),
	(4, 9, 4),
	(4, 10, 3),
	(4, 11, NULL),
	(4, 12, 3),
	(5, 1, 5),
	(5, 2, 4),
	(5, 3, NULL),
	(5, 4, NULL),
	(5, 5, NULL),
	(5, 6, NULL),
	(5, 7, 5),
	(5, 8, NULL),
	(5, 9, NULL),
	(5, 10, NULL),
	(5, 11, NULL),
	(5, 12, 5),
	(6, 1, 3),
	(6, 2, 2),
	(6, 3, NULL),
	(6, 4, NULL),
	(6, 5, NULL),
	(6, 6, 4),
	(6, 7, NULL),
	(6, 8, NULL),
	(6, 9, NULL),
	(6, 10, NULL),
	(6, 11, NULL),
	(6, 12, NULL);
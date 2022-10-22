CREATE DATABASE whalewatching;

USE whalewatching;

-- TO DELETE TABLES:
-- DROP TABLE Actor;
-- DROP TABLE Director;
-- DROP TABLE Movie;
-- DROP TABLE MovieActor;



CREATE TABLE actor (
ActorID int PRIMARY KEY AUTO_INCREMENT,
ActorName varchar(255) NOT NULL,
ActorBirthYear YEAR
);

CREATE TABLE director (
DirectorID int PRIMARY KEY AUTO_INCREMENT,
DirectorName varchar(255) NOT NULL,
DirectorBirthYear YEAR
);

INSERT INTO director (DirectorName, DirectorBirthYear)
VALUES ('Keenen Ivory Wayans', 1958);

SELECT * FROM director;

CREATE TABLE movie (
MovieID int PRIMARY KEY AUTO_INCREMENT,
MovieName varchar(255) NOT NULL,
ReleaseYear YEAR, 
DirectorID int,
FOREIGN KEY (DirectorID) REFERENCES director (DirectorID)
);

INSERT INTO movie (MovieName, ReleaseYear, DirectorID)
VALUES ('White Chicks', 2004, 1);

SELECT * FROM movie;


INSERT INTO actor (ActorName, ActorBirthYear)
VALUES ('Shawn Wayans', 1971);
INSERT INTO actor (ActorName, ActorBirthYear)
VALUES ('Marlon Wayans', 1972);
INSERT INTO actor (ActorName, ActorBirthYear)
VALUES ('Terry Crews', 1968);
INSERT INTO actor (ActorName, ActorBirthYear)
VALUES ('Jaime King', 1979);

SELECT * FROM actor;

CREATE TABLE movieactor (
MovieActorId int PRIMARY KEY AUTO_INCREMENT,
MovieID int NOT NULL,
ActorID int NOT NULL,
FOREIGN KEY (MovieID) REFERENCES movie(MovieID),
FOREIGN KEY (ActorID) REFERENCES actor(ActorID)
);

CREATE TABLE moviehistory (
MovieHistoryId int PRIMARY KEY AUTO_INCREMENT,
MovieID int NOT NULL,
FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
DateWatched DATE,
Rating int
);

INSERT INTO moviehistory(MovieID, DateWatched, Rating)
VALUES(1, 20220909, 6);

SELECT M.MovieName, DateWatched, Rating FROM moviehistory AS MH INNER JOIN movie AS M
WHERE MH.MovieID = M.MovieID;

INSERT INTO movieactor (MovieID, ActorID)
VALUES (1, 1);
INSERT INTO movieactor (MovieID, ActorID)
VALUES (1, 2);
INSERT INTO movieactor (MovieID, ActorID) 
VALUES (1, 3);
INSERT INTO movieactor (MovieID, ActorID)
VALUES (1, 4);

SELECT * FROM movie;

SELECT MovieName, ReleaseYear, DirectorName, A.ActorName FROM movie as M 
LEFT OUTER JOIN movieactor AS MA ON MA.MovieID = M.MovieID
LEFT OUTER JOIN actor AS A ON A.ActorID = MA.ActorID
INNER JOIN director as D ON D.DirectorID = M.DirectorID;

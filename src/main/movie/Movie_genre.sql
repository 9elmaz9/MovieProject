CREATE TABLE  IF NOT EXISTS Movie_genre
(

    MOVIE_ID INT,
    GENRE_ID int,
    FOREIGN KEY (MOVIE_ID) REFERENCES movie(MOVIE_ID),
    FOREIGN KEY (GENRE_ID) REFERENCES genre(GENRE_ID)
);

INSERT INTO Movie_genre (MOVIE_ID, GENRE_ID)
VALUES
    (30, 1),
    (32, 1),
    (32, 3),
    (33, 1),
    (33, 4),
    (34, 2),
    (35, 1),
    (36, 3);

SELECT m.*
FROM movie m
         JOIN movie_genre mg ON m.movie_id = mg.movie_id
         JOIN genre g ON mg.genre_id = g.genre_id
WHERE g.genre_name = 'Drama';
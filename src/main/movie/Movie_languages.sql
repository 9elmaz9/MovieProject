CREATE TABLE  IF NOT EXISTS Movie_languages
(

    MOVIE_ID    INT,
    LANGUAGE_ID INT,
    LANGUAGE_NAME VARCHAR(100),
    FOREIGN KEY (MOVIE_ID) REFERENCES Movie(movie_id),
    FOREIGN KEY (LANGUAGE_ID) REFERENCES Movie_languages(LANGUAGE_ID)
);



INSERT INTO Movie_languages (LANGUAGE_NAME) VALUES
   ('English'), ('French'), ('Spanish'), ('German'), ('Italian'), ('Japanese'), ('Chinese'), ('Russian'), ('Arabic'), ('Portuguese');

INSERT INTO Movie_Languages (MOVIE_ID, LANGUAGE_ID) VALUES
 (33, 1),
 (33, 2),
 (33, 5),
 (36, 3),
 (36, 3),
 (36, 4);



ALTER TABLE Movie_languages
    ADD COLUMN LANGUAGE_NAME VARCHAR(100);


INSERT INTO Movie_languages (MOVIE_ID, LANGUAGE_ID, LANGUAGE_NAME) VALUES
 (21,1, 'English'),   -- Movie ID 21  Engl
 (22, 2, 'Italian'),   -- Movie ID 22  Italian
 (23, 3, 'German'),    -- Movie ID 23  German
 (24, 1, 'English'),   -- Movie ID 24  English
 (25, 1, 'English');   -- Movie ID 25  English




 ##
SELECT TITLES
FROM movie m
JOIN movie_languages ml ON m.movie_id = ml.movie_id
GROUP BY m.movie_id
HAVING COUNT(*) > 2;



/*  titles + languages ,  to much languaes
SELECT m.TITLES, GROUP_CONCAT(l.LANGUAGE_NAME) AS Languages
FROM Movie m
         JOIN Movie_Languages ml ON m.MOVIE_ID = ml.MOVIE_ID
         JOIN Movie_languages l ON ml.LANGUAGE_ID = l.LANGUAGE_ID
GROUP BY m.MOVIE_ID
HAVING COUNT(*) > 2;

    */

## hmmm
SELECT m.TITLES, GROUP_CONCAT(DISTINCT l.LANGUAGE_NAME) AS Languages
FROM Movie m
         JOIN Movie_Languages ml ON m.MOVIE_ID = ml.MOVIE_ID
         JOIN Movie_languages l ON ml.LANGUAGE_ID = l.LANGUAGE_ID
GROUP BY m.MOVIE_ID
HAVING COUNT(*) > 2;
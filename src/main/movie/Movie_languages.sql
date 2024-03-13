CREATE TABLE Movie_languages
(

    Movie_language_id INT PRIMARY KEY,
    movie_id          INT,
    language_id       INT,
    FOREIGN KEY (movie_id) REFERENCES Movie (movie_id)
);
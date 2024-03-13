CREATE TABLE movie_keywords
(

    Movie_keyword_id INT PRIMARY KEY,
    Movie_id         INT,
    Keyword_id       INT,
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id)
);
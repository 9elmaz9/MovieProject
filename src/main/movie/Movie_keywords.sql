CREATE TABLE Movie_keywords
(
    movie_keyword_id INT PRIMARY KEY,
    movie_id         INT,
    keyword_id       INT,
    FOREIGN KEY (movie_id) REFERENCES movie (movie_id)
);
)
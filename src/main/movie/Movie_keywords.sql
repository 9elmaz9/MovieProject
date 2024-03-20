CREATE TABLE IF NOT EXISTS  Movie_keywords
(


    MOVIE_ID   INT,
    KEYWORD_ID INT,
    FOREIGN KEY (MOVIE_ID) REFERENCES movie (movie_id),
    FOREIGN KEY (keyword_id) REFERENCES keyword(keyword_id)
    );

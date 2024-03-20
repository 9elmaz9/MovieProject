

CREATE TABLE  IF NOT EXISTS Movie
(
    MOVIE_ID    INT AUTO_INCREMENT PRIMARY KEY ,
    TITLES      VARCHAR(255),
    DURATION   INT,
    VOTE_AVERAGE   DECIMAL(3, 1),
    INCOME_MONEY DECIMAL(10, 2)

    ##REVENUE_POUND DECIMAL(10, 2)

);

INSERT INTO movie (TITLES,INCOME_MONEY, DURATION,VOTE_AVERAGE)
VALUES
    ('The Shawshank Redemption', 142, 28341469.00, 9.3),
    ('The Godfather', 175, 245066411.00, 9.2),
    ('The Dark Knight teen', 152, 1004558444.00, 9.0),
    ('Pulp Fiction', 154, 213928762.00, 8.9),
    ('The Lord of the Rings: The Return of the King', 201, 1119929520.00, 8.9),
    ('Forrest Gump', 142, 678226003.00, 8.8),
    ('Inception', 148, 829895144.00, 8.7),
    ('The Matrix teen', 136, 463517383.00, 8.7),
    ('Interstellar', 169, 677548074.00, 8.6),
    ('Fight Club', 139, 100853753.00, 8.8);



##1- langer zijn dan 2 uur

SELECT *
FROM movie
WHERE DURATION >120;

##2- 'teen' in de titel

SELECT * FROM movie
WHERE TITLES LIKE '%Club%';




##3 -alle verschillende UNIEKE waarden voor de column vote_average in de tabel movieµ



SELECT DISTINCT Movie.VOTE_AVERAGE  FROM movie ;



##4-  alle movie titels met de revenue in Britse Pond en in Euro

SELECT TITLES,
       INCOME_MONEY AS revenue_euro,
       Movie.INCOME_MONEY * 1.11 AS revenue_pound
FROM movie;



## ASC  langer zijn dan de gemiddelde lengte van alle movies
SELECT *
FROM movie
WHERE duration > (SELECT AVG(duration) FROM movie)
ORDER BY TITLES ASC;
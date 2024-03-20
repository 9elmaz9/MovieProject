CREATE TABLE IF NOT EXISTS Movie_cast
(
    cast_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT,
    movie_id INT,
    gender_id INT,
    FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (gender_id) REFERENCES gender(gender_id)

);



INSERT INTO  movie_cast (person_id, movie_id, gender_id)
VALUES
(1, 21, 1), -- Samuel L. Jackson в фильме "Pulp Fiction"
(2, 22, 2), -- Robert De Niro в фильме "The Godfather"
(3, 23, 3), -- Bruce Willis в фильме "Die Hard"
(4, 24, 1), -- Matt Damon в фильме "The Bourne Identity"
(5, 25, 1); -- Morgan Freeman в фильме "The Shawshank Redemption"

/*ALTER TABLE Movie_cast
    MODIFY COLUMN GENDER_ID INT DEFAULT 1;


ALTER TABLE Movie_cast
    MODIFY COLUMN GENDER_ID INT NULL;
*/


 /* ##no
 SELECT  gender_id, COUNT(*)
 FROM Movie_cast  join gender ON Movie_cast.gender_id=gender.GENDER_ID
 GROUP BY  Movie_cast.gender_id , person_id , gender.GENDER_NAME; */


 /*  ## +-  zo zo
SELECT
    gender.GENDER_NAME,
    COUNT(*)AS count
FROM Movie_cast  JOIN gender on   Movie_cast.gender_id=gender.GENDER_ID
GROUP BY

    gender.GENDER_NAME,gender.GENDER_ID,person_id ,Movie_cast.gender_id;
*/




## werk
SELECT gender_id, COUNT(*)
FROM movie_cast
GROUP BY gender_id;



## challenge - work - with name , id gender + gender name
SELECT
    p.NAME AS person_name,
    p.GENDER_ID,
    g.GENDER_NAME,
    COUNT(*) AS person_count
FROM
    Person p
        JOIN
    Gender g ON p.GENDER_ID = g.GENDER_ID
GROUP BY
    p.GENDER_ID, p.NAME, g.GENDER_NAME;





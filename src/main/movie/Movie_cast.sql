CREATE TABLE Movie_cast
(
    movie_id  INT,
    person_id INT,
    gender_id INT,

    FOREIGN KEY (movie_id) references Movie (movie_id)
)
CREATE TABLE IF NOT EXISTS  Genre (

    GENRE_ID INT AUTO_INCREMENT PRIMARY KEY ,
    GENRE_NAME  VARCHAR(50)
);


INSERT INTO Genre ( GENRE_NAME)
VALUES
 ('Action'),
 ('Adventure'),
 ('Comedy'),
 ('Drama'),
 ('Fantasy'),
 ('Horror'),
 ('Romance'),
 ('Science Fiction'),
 ('Thriller'),
 ('Western');




CREATE TABLE   IF NOT EXISTS  Keyword(

   KEYWORD_ID    INT AUTO_INCREMENT PRIMARY KEY,
   KEYWORD_NAME         VARCHAR(150)

);


INSERT INTO Keyword (KEYWORD_NAME) VALUES
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

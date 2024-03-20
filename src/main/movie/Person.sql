CREATE TABLE  IF NOT EXISTS  Person
(
    PERSON_ID INT AUTO_INCREMENT PRIMARY KEY,
    NAME      VARCHAR(100),
    GENDER_ID INT NOT NULL ,
    FOREIGN KEY (gender_id) REFERENCES gender (gender_id)
);

INSERT INTO person (name, gender_id)
VALUES
    ('Tim Robbins', 1),
    ('Morgan Freeman', 1),
    ('Marlon Brando', 1),
    ('Al Pacino', 1),
    ('Heath Ledger', 1),
    ('John Travolta', 1),
    ('Viggo Mortensen', 1),
    ('Tom Hanks', 1),
    ('Leonardo DiCaprio', 1),
    ('Brad Pitt', 1),
    ('Keanu Reeves', 1),
    ('Matt Damon', 1),
    ('Edward Norton', 1),
    ('Hugo Weaving', 1),
    ('Christian Bale', 1);
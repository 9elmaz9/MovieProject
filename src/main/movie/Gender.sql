
CREATE TABLE IF NOT EXISTS  Gender
(

    GENDER_ID   INT AUTO_INCREMENT PRIMARY KEY,
    GENDER_NAME VARCHAR(30)
);


INSERT INTO Gender (GENDER_NAME) VALUES ('Male');

INSERT INTO Gender (GENDER_NAME) VALUES ('Female'), ('Non-Binary'), ('Prefer not to say');

CREATE TABLE  IF NOT EXISTS Usr
(

    USR_ID INT AUTO_INCREMENT PRIMARY KEY,
    LOGIN  VARCHAR(50),
    EMAIL  VARCHAR(255)
);

INSERT INTO usr (usr_id, login, email)
VALUES (1, 'rincewind', 'rincewind@discworld.org');


INSERT INTO usr (usr_id, login, email)
VALUES (2, 'Bursar', 'bursar@unseen.university'),
       (3, 'archchancellor', 'arch@unseen.university');


UPDATE usr
SET email = 'rincewind@unseen.university'
WHERE login = 'rincewind';
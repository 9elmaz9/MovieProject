CREATE TABLE   IF NOT EXISTS  Message (


 MSG_ID  INT AUTO_INCREMENT PRIMARY KEY,
 MESSAGE   VARCHAR(255),
 USER_ID  INT NOT NULL,
 RECEIVER_ID  INT NOT NULL,
 FOREIGN KEY (USER_ID) REFERENCES usr(USR_ID),
 FOREIGN KEY (RECEIVER_ID) REFERENCES usr(USR_ID)

);



/*INSERT INTO message (message, user_id, receiver_id)
VALUES ('Archchancelor: "You aren''t a member of some secret society or somethin, are you?" ' ||
        '  Archchancelor: "Bursar?" ' ||
                'Bursar: "Yes, Archchancellor?"' ||
        'Bursar:" Me? No, Archchancellor."' ||
        'Archchancelor: "Then it would be a damn good idea to take your underpants off your head ."' || '', 3, 2)

;*/


INSERT INTO Message (MESSAGE, USER_ID, RECEIVER_ID) VALUES
    ('Archchancelor: “Bursar?" Bursar: "Yes, Arch?" Archchancelor: "You aren\'t a member of some secret society or somethin\', are you?" Bursar: "Me? No, Archch." Archchancelor: "Then it\'d be a damn good idea to take your underpants off your head”.', 3, 2);

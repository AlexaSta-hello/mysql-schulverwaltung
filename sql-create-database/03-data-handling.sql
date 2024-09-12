
/* Daten einsetzten*/
INSERT INTO users (username, pwd, email) 
    VALUES ('Alex S.', 'alex123', 'alex_s@mail.com');
/*user und id müssen schon angelegt sein!*/
INSERT INTO comments (username, comment_text, users_id) 
    VALUES ('Alex S.', 'This is a comment on a website', 3);


/* Daten bearbeiten*/
UPDATE users SET username = 'Yannick123', pwd = 'yan!cool' 
    WHERE id = 2; 
/* AND / OR kann man auch nach anhängen.
    Also z.B. WHERE id = 2 AND username = 'Alex_S.'*/



/* Daten löschen*/
DELETE FROM users WHERE id = 1;


/* Daten auswählen*/
SELECT username, email FROM users WHERE id = 3;

SELECT username, comment_text FROM comments WHERE users_id = 3;

SELECT * FROM comments WHERE users_id = 3; /* alles auswählen */


/* hier *ALLE Daten auswählen aus beiden Tabellen (INNER JOIN) über
    Verknüfung des Primary und foreign keys. also id in users und
    users_id in comments, weil die gleich sind.*/
SELECT * FROM users INNER JOIN comments 
    ON users.id = comments.users_id;

/*oder spezifische Datebn*/
SELECT users.username, comments.comment_text, comments.created_at 
    FROM users INNER JOIN comments ON users.id = comments.users_id;

/*left Join: alle users, weil links, auch wenn sie kein comment haben*/
SELECT * FROM users LEFT JOIN comments 
    ON users.id = comments.users_id;

SELECT * FROM users RIGHT JOIN comments 
    ON users.id = comments.users_id;



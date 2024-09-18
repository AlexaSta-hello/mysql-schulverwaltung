
/* Daten einsetzten*/
INSERT INTO users (username, pwd, email) 
    VALUES ('Alex S.', 'alex123', 'alex_s@mail.com');
/*user und id müssen schon angelegt sein!*/
INSERT INTO comments (username, comment_text, users_id) 
    VALUES ('Alex S.', 'This is a comment on a website', 3);


/* Daten bearbeiten*/
UPDATE users 
    SET username = 'Yannick123', pwd = 'yan!cool' 
    WHERE id = 2; 
/* AND / OR kann man auch nach anhängen.
    Also z.B. WHERE id = 2 AND username = 'Alex_S.'*/



/* Daten löschen*/
DELETE FROM users WHERE id = 1;


/* Daten auswählen*/
SELECT username, email FROM users WHERE id = 3;

SELECT username, comment_text FROM comments WHERE users_id = 3;

SELECT * FROM comments WHERE users_id = 3; /* alles auswählen */


/* wir könnten Zeit VALUES einfuügen mit:*/
CURRENT_DATE()
CURRENT_TIME()
NOW()

/* Automatisches Speichern ein/aus*/
// Damit wir nicht aus versehen falsche eingaben speichern oder Daten löschen, 
könnten wir anfangs das schreiben:
SET AUTOCOMMIT = OFF; // damit wird automatisches Speichern nach Ausführung verhindert.
dann löschen wir z.b. etwas. Man kann es undo-en mit:
ROLLBACK;
-> wir müssen dann extra händisch Änderungen speichern mit:
COMMIT; am Ende






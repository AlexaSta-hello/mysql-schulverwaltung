CREATE TABLE Lehrer (
    lehrer_id INT(11) NOT NULL AUTO_INCREMENT,
    vorname VARCHAR(50) NOT NULL,
    nachname VARCHAR(50) NOT NULL,
    email VARCHAR(255),
    geburtsdatum DATE NOT NULL,
    PRIMARY key(lehrer_id)
);

RENAME TABLE Lehrer TO lehrer;


INSERT INTO lehrer
    VALUES  (1, "Hans", "Krebs", "krebs@mail.com", "1954-08-21"),
            (2, "Franz", "Fisch", "fisch@mail.com", "1964-07-20"),
            (3, "Heide", "Hase", "hase@mail.com", "1972-01-11"),
            (4, "Frida", "Dorsch", "dorsch@mail.com", "1956-02-18"),
            (5, "Petra", "Klein", "klein@mail.com", "1984-06-30"),
            (6, "Michael", "Ende", "ende@mail.com", "1983-05-21"),
            (7, "Martina", "Helmholt", "helmholz@mail.com", "1963-07-30");

ALTER TABLE lehrer
ADD stundenlohn DECIMAL(3, 2); //das war falsch. es bedeutet insgesamt 3 zeichen und davon 2 hinter dem komma.

ALTER TABLE lehrer
MODIFY stundenlohn DECIMAL(5, 2);


UPDATE lehrer
SET stundenlohn = 40
WHERE lehrer_id = 1; // usw.


SELECT * FROM lehrer;

SELECT * FROM lehrer INNER JOIN kurs
ON lehrer.lehrer_id = kurs.lehrer_id;

oder spezifischer:

SELECT lehrer.vorname, lehrer.nachname, kurs.titel, kurs.semester
FROM lehrer INNER JOIN kurs ON lehrer.lehrer_id = kurs.lehrer_id

// 15. wir löschen eine Lehrerin und alle ihre Kurse
DELETE FROM kurs
WHERE lehrer_id =   (SELECT lehrer_id
                    FROM lehrer
                    WHERE vorname = "Frida" AND nachname = "Dorsch");

DELETE FROM lehrer 
WHERE lehrer_id = 4;
CREATE TABLE Schüler (
    schueler_id INT(11) NOT NULL AUTO_INCREMENT,
    vorname VARCHAR(50) NOT NULL,
    nachname VARCHAR(50) NOT NULL,
    email VARCHAR(255),
    geburtsdatum DATE NOT NULL,
    klasse TINYINT(2) NOT NULL,
    PRIMARY key(schueler_id)
);

RENAME TABLE Schüler TO schueler;




INSERT INTO schueler
    VALUES  (3, "Jakob", "Staski", "jakob@mail.de", "2006-12-06", 13),
            (4, "Luan", "Hammer", "luan@mail.de", "2008-10-06", 11),
            (5, "Nastia", "Staski", "nastia@mail.de", "2010-12-06", 9),
            (6, "Xenia", "Klein", "klein@mail.de", "2010-09-06", 9),
            (7, "Steen", "Sieggi", "steen@mail.de", "2009-05-06", 10),
            (8, "Clara", "Beta", "clara@mail.de", "2011-04-29", 8),
            (9, "Britta", "Mangoo", "britta@mail.de", "2009-03-16", 10),
            (10, "Lara", "Fuchs", "lara@mail.de", "2009-08-16", 10),
            (11, "Marko", "Biene", "marko@mail.de", "2007-10-06", 13),
            (12, "Lena", "König", "lena@mail.de", "2007-02-06", 13),
            (13, "Peter", "Klein", "peter@mail.de", "2008-07-13", 11),
            (14, "Cosmo", "Schulz", "cosmo@mail.de", "2008-04-18", 11),
            (15, "Nils", "Klein", "nils@mail.de", "2010-10-08", 9),
            (16, "Yannick", "Siggi", "yannick@mail.de", "2011-08-29", 8),
            (17, "Daniel", "Gold", "daniel@mail.de", "2011-12-16", 8);


// Alle Schüler der 10. Klasse anzeigen:
SELECT * 
FROM schueler 
WHERE klasse = 10; 


// Mail updaten
UPDATE schueler
SET email = "klein@mail.de"
WHERE schueler_id = 6;
SELECT * FROM schueler WHERE schueler_id = 6;

// Angenommen ich möchte ALLE Zeilen einer Spalte verändern, dann einfach:
UPDATE schueler
SET email = "klein@mail.de" -> also ohne WHERE

// Löschen geht mit:
DELETE FROM schueler 
WHERE schueler_id = 4; 


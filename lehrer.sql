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
            (5, "Petra", "Klein", "klein@mail.com", "1984-06-30");




SELECT * FROM lehrer;
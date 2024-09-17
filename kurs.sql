CREATE TABLE kurs (
    kurs_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titel VARCHAR(50) NOT NULL,
    lehrer_id INT(11),
    semester TINYINT(2) NOT NULL,
    FOREIGN KEY(lehrer_id) REFERENCES lehrer (lehrer_id) ON DELETE SET NULL
);

INSERT INTO kurs
    VALUES  (1, "Mathe", 1, 13),
            (2, "Deutsch", 2, 13),
            (3, "Englisch", 1, 13),
            (4, "Sport", 3, 13),
            (5, "Kunst", 4, 13),
            (6, "Mathe", 1, 12),
            (7, "Deutsch", 1, 12),
            (8, "Englisch", 2, 12),
            (9, "Sport", 3, 12),
            (10, "Kunst", 4, 12),
            (11, "Mathe", 1, 11),
            (12, "Deutsch", 2, 11),
            (13, "Englisch", 1, 11),
            (14, "Sport", 3, 11),
            (15, "Kunst", 4, 11),
            (16, "Mathe", 1, 10),
            (17, "Deutsch", 2, 10),
            (18, "Englisch", 1, 10),
            (19, "Sport", 3, 10),
            (20, "Kunst", 4, 10),
            (21, "Französisch", 5, 10),
            (22, "Mathe", 1, 9),
            (23, "Deutsch", 2, 9),
            (24, "Englisch", 1, 9),
            (25, "Sport", 3, 9),
            (26, "Kunst", 4, 9),
            (27, "Französisch", 5, 9),
            (28, "Mathe", 1, 8),
            (29, "Deutsch", 2, 8),
            (30, "Englisch", 1, 8),
            (31, "Sport", 3, 8),
            (32, "Kunst", 4, 8),
            (33, "Französisch", 5, 8);

// Alle Kurse und ihre Lehrer:

SELECT titel, lehrer_id 
FROM kurs;
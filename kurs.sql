CREATE TABLE kurs (
    kurs_id INT(11) NOT NULL AUTO_INCREMENT,
    titel VARCHAR(50) NOT NULL,
    lehrer_id INT(11),
    semester TINYINT(2) NOT NULL,
    PRIMARY KEY(kurs_id),
    FOREIGN KEY(lehrer_id) REFERENCES lehrer (lehrer_id) ON DELETE SET NULL
);
CREATE TABLE users (
	id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIME,
    PRIMARY KEY(id)
);



CREATE TABLE comments (
	id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    comment_text TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIME,
    users_id INT(11),
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id) ON DELETE SET NULL
);

/* es gibt noch:
ON DELETE NO ACTION
ON DELETE CASCADE
ON DELETE SET NULL */

/* Tablle bearbeiten -> Spalte hinzufügen*/
ALTER TABLE users
ADD birthday DATE;

/* Spalte umbenennen */
ALTER TABLE users
RENAME COLUMN birthday TO jahrgang;

/* Datentyp bearbeiten*/
ALTER TABLE users
MODIFY COLUMN jahrgang INT(4);

/* Position der Spalte verändern */
ALTER TABLE users
MODIFY email VARCHAR(100)
AFTER username;
/* oder an erste Position mit FIRST */

/* Spalte löschen */
ALTER TABLE users
DROP COLUMN email;


CONSTRAINT /*: sind die Parameter hinter einer Spalte, wie z.B. UNIQUE.
UNIQUE heißt, dass ein VALUE nur einmal vorkommen kann.*/

/*Falls wir vergessen haben einen CONSTRAINT anzugeben, machen wir das so:*/
ALTER TABLE schueler
ADD CONSTRAINT 
UNIQUE (schueler_id);

oder:
Alter TABLE schueler
MODIFY schueler_id INT(11) UNIQUE; 


/* --------------------------
Vorgaben für Spalten festlegen 
-------------------------------*/
CHECK: angenommen wir haben eine Spalte  Stundenlohn.
Der Stunden lohn soll mindestens 10 Euro betragen. Das können wir checken,
indem wir Bsp.:
CREATE TABLE arbeitnehmer (
    vorname VARCHAR(25),
    nachname VARCHAR(25),
    stundenlohn DECIMAL(5,2) -> 2 Stellen nach dem Komma
    CONSTRAINT chk_stundenlohn CHECK (stundenlohn >= 10.00)
); -> wir erstellen ein CONSTRAINT und vergeben Namen hier chk_stundenlohn
/* oder bestehende Tabelle verändern */
ALTER TABLE arbeitnehmer
    ADD CONSTRAINT chk_stundenlohn CHECK (stundenlohn >= 10.00)
/* CHECK löschen */
ALTER TABLE
DROP CHECK chk_stundenlohn;

DEFAULT: Standardwerte festlegen. Hier soll der Preis überall 0 sein und Datum JETZT:
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(25),
    price DECIMAL(4,2) DEFAULT 0,
    bestellung DATETIME DEFAULT NOW();
)
Beim eingeben der VALUES müssen wir nun die Spalten angeben, die wir füllen,
also alle außer der DEFAULT Spalte
INSERT INTO products (product_id, product_name)
    VALUES  (104, "serviette"),
            (105, "trinkhalm"),
            (106, "gabel");

oder bestehende Tabelle verändern:
ALTER TABLE products
    ALTER price SET DEFAULT 0;
    


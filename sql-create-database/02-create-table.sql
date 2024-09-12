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

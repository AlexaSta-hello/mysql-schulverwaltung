/* hier *ALLE Daten auswählen aus beiden Tabellen (INNER JOIN) über
    Verknüfung des Primary und foreign keys. also id in users und
    users_id in comments, weil die gleich sind.*/

/* mit INNER JOIN werden uns nur Datensätze angezeigt, die auch ein comment haben */
SELECT * FROM users INNER JOIN comments 
    ON users.user_id = comments.users_id;

/*oder spezifische Daten*/
SELECT users.username, comments.comment_text, comments.created_at 
    FROM users INNER JOIN comments 
    ON users.id = comments.users_id;

/*LEFT JOIN: alle users, weil links, auch wenn sie kein comment haben*/
SELECT * FROM users LEFT JOIN comments 
    ON users.id = comments.users_id;

/* RIGHT JOIN zeigt alle Daten aus comments an, auch wenn es keine user mehr dazu gibt */
SELECT * FROM users RIGHT JOIN comments 
    ON users.id = comments.users_id;



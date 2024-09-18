
SELECT * FROM lehrer
ORDER BY stundenlohn; //aufsteigend

SELECT * FROM lehrer
ORDER BY vorname;

SELECT * FROM lehrer
ORDER BY stundenlohn DESC; // absteigend

// wenn der stundenlohn gleich ist, dann nach geburtsdatum absteigend
SELECT * FROM lehrer
ORDER BY stundenlohn, geburtsdatum DESC;
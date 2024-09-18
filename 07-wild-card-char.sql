// % beliebige Anzahl an charactern hier hinter l
SELECT * FROM schueler
WHERE vorname LIKE 'l%';

SELECT * FROM schueler
WHERE nachname LIKE '%i';

//oder mit Dates 
SELECT * FROM schueler
WHERE geburtsdatum LIKE '201%';

// _ ersetzt einen buchstaben
SELECT * FROM schueler
WHERE vorname LIKE '_astia';

SELECT * FROM schueler
WHERE geburtsdatum LIKE '20__-05-__';

// kombiniert
SELECT * FROM schueler
WHERE vorname LIKE '_a%';




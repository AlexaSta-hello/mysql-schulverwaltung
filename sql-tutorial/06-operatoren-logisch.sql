SELECT * FROM lehrer
WHERE geburtsdatum < '1970-01-01'
AND stundenlohn >= 35;

SELECT * FROM lehrer
WHERE NOT geburtsdatum < '1970-01-01'
AND NOT stundenlohn >= 35;


SELECT * FROM lehrer
WHERE geburtsdatum < '1970-01-01'
OR stundenlohn >= 35;


SELECT * FROM lehrer
WHERE geburtsdatum BETWEEN  '1960-01-01' AND '1975-01-01';


SELECT * FROM lehrer
WHERE nachname IN ('Fisch', 'Hase');




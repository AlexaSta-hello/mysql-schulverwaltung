/* zählt die Zeilen einer Spalte */
SELECT COUNT(titel) /* opt.*/ AS "Anzahl der Kurse"
FROM kurs;

/* Kleinster oder größter Wert einer Spalte */
SELECT MIN(klasse) AS "niedrigste Klasse"
FROM schueler;

/* Durchschnitt AVE average */
SELECT AVG(klasse) AS "Durchschnitt-Klasse"
FROM schueler;

/* Summe SUM */
SELECT SUM(klasse) AS "Summe Klasse"
FROM schueler;

/* Konkatinieren von Spalten */
SELECT * CONCAT(vorname," ",nachname) AS name
FROM schueler;




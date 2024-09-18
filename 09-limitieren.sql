SELECT * FROM kurs
LIMIT 10;       // die ersten 10

SELECT * FROM schueler
LIMIT 3, 2; // zeige mir die 2 nach den ersten 3 an

SELECT * FROM kurs
ORDER BY titel LIMIT 10;



SELECT DISTINCT titel FROM kurs // zeigt nur verschiedene Kurs-TITEL unabhängig von Semester an
LIMIT 2;
USE db_filme;

SELECT * FROM actori;
SELECT * FROM distributie;

SELECT Nume,Prenume FROM actori AS actori,
FULL  JOIN distributie AS distributie
ON actori.id_Actor=distributie.id_Actor;




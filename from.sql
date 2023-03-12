--- FROM 📌

-- FROM normal ◀️
SELECT *
FROM tabla_diaria;

-- FROM con alias y un Join de union ◀️
SELECT *
FROM tabla_diaria AS td
	JOIN tabla_mensual AS tm ON td.pk = tm.fk;

-- FROM de base de datos remota ◀️
SELECT * 
FROM dblink('
	dbname=somedb
	port=1234 host=someserver
	user=someuser
	password=somepwd',
	'SELECT column1, column2
	FROM tabla.bloque')
AS nombre_cool
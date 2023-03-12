--- SELFISH 📌 

--- EJEMPLO ◀️
SELECT CONCAT(t.nombre, ' ', t.apellido) AS tutor,
	   COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10
	   

-- SELECT los campos, y creamo nuevas tablas.
-- CONCAT para hacer una contenacion.
-- COUNT para contar.
-- FROM de la tabla que queremos. Y le damos un alias.
-- INNER JOIN para unir la misma tabla, porque por eso es un selfish join.
-- GROUP BY para agrupar.
-- ORDER para ordenar de manera DESC.
-- LIMIT para pedir solo 10.


--- EJEMPLO ◀️
SELECT AVG(alumnos_por_tutor) AS promedio_alumnos_por_tutor
FROM (
SELECT CONCAT(t.nombre, ' ', t.apellido) AS tutor,
	   COUNT(*) AS alumnos_por_tutor
FROM platzi.alumnos AS a
	INNER JOIN platzi.alumnos AS t ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10) AS alumnos_tutor
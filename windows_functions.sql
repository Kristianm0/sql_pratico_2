-- WINDOWS FUNCTIONS 📌


-- EJEMPLO ◀️
SELECT *,
	AVG(colegiatura) OVER(PARTITION BY carrera_id)
FROM platzi.alumnos

-- SELECT todo.
-- AVG para el promedio.
-- OVER que lo haga sobre una partition.
-- PARTITION BY  que divida el conjunto de datos en otras columnas.
-- FROM para decirle la base de datos.

-- EJEMPLO ◀️
SELECT *,
	SUM(colegiatura) OVER(PARTITION BY carrera_id ORDER BY carrera_id)
FROM platzi.alumnos

-- SELECT todo.
-- SUM para sumar.
-- OVER para que lo haga en la row.
-- ORDER BY para que ordene los datos con carrera_id.
-- FROM para especificar la base de datos.

-- PARTICIONES Y AGREGACION 📌
SELECT ROW_NUMBER() OVER(ORDER BY fecha_incorporacion) AS row_id, *
FROM platzi.alumnos


-- SELECT para escoger los datos.
-- ROW_NUMBER para contar las tuplas del row.
-- OVER para decirle que no tenga nada especial.
-- AS para poenerle un alias.
---- TODAS LAS UNIONES 📌


-- EJEMPLO ◀️
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	LEFT JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE c.id IS NULL

-- SELECT los rows.
-- FROM base de datos. Le ponemos un alias.  
-- LEFT JOIN para unir la tabla.
-- WHERE para clasificar algunos datos.

-- EJEMPLO ◀️
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	RIGHT JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE a.id IS NULL
ORDER BY c.id DESC
-- Lo mismo pero con el RIGHT

-- EJEMPLO ◀️
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	INNER JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE c.id IS NULL
-- INNER JOIN une los datos en comun de dos tablas.

-- EJEMPLO ◀️
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	FULL OUTER JOIN platzi.carreras AS c
	ON a.carrera_id = c.id
WHERE a.id IS NULL
	OR c.id IS NULL
ORDER BY a.carrera_id DESC, c.id DESC
-- FULL OUTER JOIN trae lo que se ecuntre en la table A y la tabla B pero no se encuentra en ambas

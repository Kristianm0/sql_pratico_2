--- DIFERENCIAS 📌


--- EJEMPLO ◀️
SELECT a.nombre,
	   a.apellido,
	   a.carrera_id,
	   c.id,
	   c.carrera
FROM platzi.alumnos AS a
	LEFT JOIN platzi.carreras AS c
	ON  a.carrera_id = c.id
WHERE c.id IS NULL
ORDER BY a.carrera_id

-- SELECT los datos que queremos.
-- FROM la base de datos. Y le ponemos un alias.
-- LEFT JOIN para hacer la union con la otra tabla.
-- WHERE para especificar como queremos los datos.
-- ORDER BY para ordenar los datos.
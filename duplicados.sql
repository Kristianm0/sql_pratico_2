--- DUPLICADOS 📌

--- EJEMPLO ◀️
SELECT (platzi.alumnos.*):: text, COUNT(*)
FROM platzi.alumnos
GROUP BY platzi.alumnos.*


-- Los dos puntos son para covetir en texto un valor.

--- EJEMPLO ◀️
SELECT (
	platzi.alumnos.nombre,
	platzi.alumnos.apellido,
	platzi.alumnos.email,
	platzi.alumnos.colegiatura,
	platzi.alumnos.fecha_incorporacion,
	platzi.alumnos.carrera_id,
	platzi.alumnos.tutor_id
	):: text, COUNT(*)
FROM platzi.alumnos
GROUP BY platzi.alumnos.nombre,
	platzi.alumnos.apellido,
	platzi.alumnos.email,
	platzi.alumnos.colegiatura,
	platzi.alumnos.fecha_incorporacion,
	platzi.alumnos.carrera_id,
	platzi.alumnos.tutor_id
HAVING COUNT(*) > 1;

-- Le decimos que SELECT los rows que queremos.
-- Despues lo convertimos en texto con :: Text 
-- Le decimos que los cuente con COUNT
-- le decimos de donde son los datos con FROM
--  Con HAVINF que llos cuente y sea mayor a 1.

--- EJEMPLO ◀️ 
SELECT *
FROM (
	SELECT id,
	ROW_NUMBER() OVER(
	 	PARTITION BY
			nombre,
			apellido,
			email,
			colegiatura,
			fecha_incorporacion,
			carrera_id,
			tutor_id
	ORDER BY id ASC
	) AS ROW,
	*
	FROM platzi.alumnos
) AS duplicados
WHERE duplicados.row > 1;


-- Lo podemso hacer tambien con windows function.
-- Primero el SELECT.
-- Ponemos FROM para decirle de donde.
-- Hacemos un sub query.
-- Hacemos un row_number con una partition. Que tenga todo menos id.
-- Usamos ORDER BY para ordenar los datos.
-- Le decimos de donde los va a traer con FROM.
-- Con WHERE le decimos que traiga lo que sea mayor a 1
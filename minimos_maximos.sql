--- Minimos y maximos 📌

--- EJEMPLO ◀️
SELECT carrera_id, fecha_incorporacion
FROM platzi.alumnos
GROUP BY carrera_id, fecha_incorporacion
ORDER BY fecha_incorporacion DESC
LIMIT 1
-- SELECT los valore.
-- FROM la base de datos.
-- ORDER BY para ordenar los datos.
-- LIMIT para pedir solo 1.

--- EJEMPLO ◀️
SELECT carrera_id, MAX(fecha_incorporacion)
FROM platzi.alumnos
GROUP BY carrera_id
ORDER BY carrera_id
-- Lo mismo pero con el maximo.
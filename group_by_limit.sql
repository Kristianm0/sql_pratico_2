---GROUP BY LIMIT 📌

--- EJEMPLO ◀️
SELECT * 
FROM tabla
GROUP BY marca
-- SELECT todo.
-- FROM la tabla o base de datos.
-- GROUP BY agrupamos por marca.

--- EJEMPLO ◀️
SELECT *
FROM tabla
GROUP BY marca, modelo 
-- GROUP by dos columnas diferentes.

--- EJEMPLO ◀️
SELECT *
FROM tabla
LIMIT 10
-- SELECT todo
-- FROM de la tabla.
-- LIMIT solo trae las primeras 10.

--- EJEMPLO ◀️
SELECT *
FROM tabla 
OFFSET 1500
LIMIT 100
--- Con OFFSET le decimos que comienze a contar despues de los 1500, y va a traer los primeros 100 despues de los 1500

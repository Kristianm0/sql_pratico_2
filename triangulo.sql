--- TRIANGULO 📌

-- EJEMPLO ◀️
SELECT lpad('sql', 15, 'a')
--- Usamos SELECT para usar esta funcion de SQL.
-- lpad para rellenar caracteres. El primer parametro es con lo que lo va a llenar, el segundo es con los caracteres que va a tener, y el tercero es con lo que puede usar de no tener con que llenarlo.

-- EJEMPLO ◀️
SELECT lpad('sql', id, '*')
FROM platzi.alumnos
WHERE id <10

-- SELECT
-- Usamos lpad, llenamos sus 3 parametros.
-- FROM la base de datos.
-- WHERE que los datos sean menor a 10.
-- Esto estara reyenado los carateres segun el ID. Si el id es 10 y sql 3 carateres los 7 caratetes restrantes se llena con * que fue con lo que lo indicamos.

-- EJEMPLO ◀️
SELECT lpad('sql', id, '*'), carrera_id
FROM platzi.alumnos
WHERE id <10

-- SELECT.
-- lpad para rellenar los caracteres. Tres parametros, el primero de lo que usara, el segundo como medida, el tercero con que lo va a rellenar.
-- WHERE para decirle que solo los id traiga menores a 10.

---
SELECT lpad('*', CAST(row_id AS int), '*')
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_id
WHERE row_id <= 5
ORDER BY carrera_id
-- SELECT.
-- Lpad para rellenar, tres parametros. el primero dice con que lo rellena, el segundo se convierte en caracter porque un id es no es integer.
-- FROM para hacer el sub query.
-- En el sub query tenemos un SELECT, ROW_NUMBER para contar los ROWS, le ponemos un alias.
-- FROM para decirle de donde sacara los datos.
-- Le ponemos un alias al SUB query.
-- WHERE para filtrar algunos datos.
-- ORDER BY para ordenar.

-- EJEMPLO ◀️
-- Hay ona version que hace lo mismo pero a la derecha que es 
SELECT rpad('sql', id, '*'), carrera_id
FROM platzi.alumnos
WHERE id <10
ORDER BY carrera_id
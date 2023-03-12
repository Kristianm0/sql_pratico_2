--- DATE 📌


--- EJEMPLO ◀️
SELECT EXTRACT (YEAR FROM fecha_incorporacion) AS anio_incorporacion
FROM platzi.alumnos;
-- SELECT para selecionar, con EXTRACT le decimos que extraiga una columna en especifico.
-- EXTRACT es para decirle de que campo, se pone el tipo de dato y el FROM para decirle donde.
-- AS para cambiarle el nombre.
-- FROM para especificar la tabla.

--- EJEMPLO ◀️
SELECT DATE_PART('YEAR', fecha_incorporacion) AS fecha
FROM platzi.alumnos

-- Con DATE_PART le decimos que traiga una fecha. Entre comillas ponemos el tipo de datos, y ponemos la columna. 

--- EJEMPLO ◀️
SELECT DATE_PART('YEAR', fecha_incorporacion) AS fecha,
	DATE_PART ('MOTH', fecha_incorporacion) AS mes
	DATE_PART('DAY', fecha_icorporacion) AS dia
FROM platzi.alumnos

-- Tambien se pueden sacar diferentes fechas. Y sacarlas una cada una individualmente.

-- Tambien se pueden sacar diferentes fechas. Y sacarlas una cada una individualmente.

--- EJEMPLO ◀️
SELECT DATE_PART('HOURS', fecha_incorporacion) AS hora,
DATE_PART ('MINUTE', fecha_incorporacion) AS minutos,
DATE_PART('SECOND', fecha_incorporacion) AS segundos
FROM platzi.alumnos

-- Para sacar la hora se puede usar HOURS y minutos MINUTES

--- POR AÑO 📌
SELECT *
FROM platzi.alumnos
WHERE DATE_PART('YEAR', fecha_incorporacion) = 2019


-- SELECT todo.
-- FROM de la tabla.
-- WHERE especificamos lo que queremos y con DATE part le decimos como va a atraer los datos de tiempo.
-- Despues de los parentesis ponemos que sea = a 2019.

--- USANDO EXTRACT 📌
SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2019

--- CON SUB queries
SELECT *
FROM (
	SELECT *,
	DATE_PART('YEAR', fecha_incorporacion) AS ano
	FROM platzi.alumnos
) AS alumnos_con_years


-- Tambien podemos hacer un sub query que traiga los valores en otra row.
-- Usamos un SELECT normal.
-- Un FROM, y dentro de ese FROM ponemos el sub SELECT, donde usamos DATE_PART.
-- En ese sub SELECT le decimos de donde viene los alumnos.
-- Le decimos como se va a llamar.

--- CON FILTRO
SELECT *
FROM (
	SELECT *,
	DATE_PART('YEAR', fecha_incorporacion) AS anito
	FROM platzi.alumnos
) AS alumnos_con_years
WHERE anito = 2020


-- Usamos con filtros y que sea igual a el numero que queremos

--- Otreo ejemplo 
--Extrer los dos coampos, alumos que se icnorporaron en mayo del 2018 

SELECT *
FROM platzi.alumnos
WHERE DATE_PART('YEAR', fecha_incorporacion) = 2019 AND 
	DATE_PART ('MONTH', fecha_incorporacion) = 5
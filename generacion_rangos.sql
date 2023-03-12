-- GENERACIONES DE RANGO 📌

-- EJEMPLOS ◀️
SELECT *
FROM generate_series(1, 4)

-- SELECT todo.
-- FROM y generate_series, esto hace que genere una serie, que comienze y termine con un numero que queremos.
-- En este caso los parametros se definen dentro de los parentesis.

-- EJEMPLOS ◀️
SELECT *
FROM generate_series(5, 1, -2)
-- Puedes poner un tercer parametro y decirle que comienze en 5 y vaya subiendo con -2 en dos.

-- EJEMPLOS ◀️
SELECT *
FROM generate_series(4, 4)
-- Aqui puede generar en 4 y 4 hasta llegar a 4, osea solo una vez.

-- EJEMPLOS ◀️
SELECT *
FROM generate_series(1.1, 4, 1.3)
-- Tambien puede usar numeros decimales.

-- EJEMPLOS ◀️
SELECT current_date + s.a AS dates
FROM generate_series(0,14, 7) AS s(a)

-- CURRENT_DATE es para la fecha actual.
-- con AS le ponemos un alias.
-- generates series genera una serie.
-- 3 parametros, que inicie en 0 que es el primier parametro. que termine antes de llegar a 14, y que sume 7.

-- EJEMPLOS ◀️
SELECT *
FROM generate_series ('2020-09-01 00:00:00':: timestamp,
					 '2020-09-04 12:00:00', '10 hours')

-- SELECT  todo
-- FROM de generate_series.
-- Le decimos que sea tiempo, con timestamp.
-- Igual tenemos 3 parametros, le damos una fecha y hora, otra fecha y hora, y le damos una hora.


--- EJEMPLOS ◀️
SELECT a.id,
	   a.nombre,
	   a.apellido,
	   a.carrera_id,
	   s.a
FROM platzi.alumnos AS a
	INNER JOIN generate_series(0, 10) AS s(a)
	ON s.a = a.carrera_id
ORDER BY a.carrera_id

-- SELECT selecionamos los valores de la tabla a, 
-- FROM los valores de platzi alumnos la tabla a es alumnos.
-- INNER JOIN hacemos el generate_series con dos parametros. le decimos wue es igual a carrera id.
-- ORDER BY lo ordenamos por carrera_id.
--- WHERE 📌



-- EJEMPLO ◀️
SELECT *
FROM tabla_diaria
WHERE id = 1

-- SELECT todo
-- FROM le decimos que tabla-
-- WHERE id donde la casilla que vamos a traer tenga 1

-- EJEMPLO ◀️
SELECT *
FROM tabla_diaria 
WHERE cantidad > 10
--SELECT todo 
-- FROM de la tabla 
-- WHERE cantiadad, donde el row sea mayor a 10.

-- EJEMPLO ◀️
SELECT *
FROM tabla_diaria
WHERE cantidad BETWEEN 10 AND 100;
-- SELECT todo
-- FROM la tabla que queramos
-- WHERE que cantidad este entre 10 y 100 esto con la sentencia BETWEEN.

-- EJEMPLO ◀️
SELECT *
FROM users 
WHERE name = 'Israel'
	AND (
		lastname = "Vazques"
		OR 
		Lastname = "Lopez"
);
-- SELECT todo
-- FROM los usuarios.
-- WHERE que el nombre sea israel, y el apellido sea lopez o Vazques. Esto con la sentencia AND y OR.

-- EJEMPLO ◀️
SELECT *
FROM users 
WHERE name LIKE 'Is%'
-- Le decimos que sea parecido con LIKE u lo ponemos al final de los caraterateres para que las letras concidan al comienzo.

-- EJEMPLO ◀️
SELECT 
FROM users
WHERE name LIKE 'Is_ael'
-- LIKE __ que traiga cualquier letra que sea Is ael que este entre esa dos.

-- EJEMPLO ◀️
SELECT *
FROM users
WHERE name NOT LIKE 'Is_ael'
--- Que no se parezca a Is_ael

-- EJEMPLO ◀️
SELECT*
FROM users
WHERE name IS NULL
-- IS NULL para decirle que traiga un valor nulo.

-- EJEMPLO ◀️
SELECT *
FROM 
WHERE name IS NOT NULL
-- Le decimos que el valor no sea NULL y que contengan algun valor.

-- EJEMPLO ◀️
SELECT *
FROM users
WHERE name IN ('Israel', 'Laura', 'Luis')
-- Que la casilla name tengan los nombres o carateres dentro de los parentesis.

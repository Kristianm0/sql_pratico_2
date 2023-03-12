--- RANGOS 📌
En los rangos se para decir igual se una @>


--- EJEMPLOS ◀️
SELECT INT4RANGE(10, 20) @>3


--- SELECT INT4RANGE para darle un rango. Entre parentesis le ponemos el rango, esta entre 10, y 20. 
-- Y le preguntamos si @> 3 para ver si 3 esta entre el rango que le di.
-- INT son carateres y 4range es for rango, para decirle que es un rango.
-- No deberia devolver true o false.


--- EJEMPLO ◀️
SELECT INT4RANGE(1,100) @> 12

-- Aqui le damos un rango y le decimos que si esta 12.
-- Si esta por lo que su respuesta debe ser true.

--- EJEMPLO ◀️
SELECT NUMRANGE (11.1, 22.2) && NUMRANGE (20.0, 30.0)

-- Usamos NUM para decirle que es un numero.
-- RANGE para deirle que es un rango.
-- && para decirle que si se solapan entre esos dos rangos. Osea si 11.11 y 22.2 se ecunetra en 20.0 y 30.0 devuelmeme TRUE, si no se encuentra dame FALSE.

--- EJEMPLO ◀️
SELECT UPPER(INT8RANGE(1, 2))

-- Con UPPER da el valor mas alto que le pongamos en el rango.

--- EJEMPLO ◀️
SELECT LOWER (INT4RANGE(1, 2))
-- Con LOWER nos da el valor mas bajo que le demos dentro del ranfo.

--- EJEMPLO ◀️
SELECT INT4RANGE(10, 20) * INT4RANGE(15, 29)
-- Podemos pedirle la interseccion de los rangos con un signo de multiplicacion en el medio o los valores en comun *. 

--- EJEMPLO ◀️
SELECT ISEMPTY (NUMRANGE(1, 5))
-- Para saber si un RANGO  esta vacio o no.

--- EJEMPLO ◀️
SELECT *
FROM platzi.alumnos
WHERE INT4RANGE (10, 20)@> tutor_id 

-- SELECT todo
-- FROM la tabla que queremos los datos.
-- WHERE para especificar las carateristicas de los datos, y le decimos que muestre donde tutor id tenga el rango que le dimos osea 10 y 20. 
-- INT4RANGE para darle el rango.
--- REGULARIZANDO EXPRESIONES 📌

-- Triangulo con generate_series

-- EJEMPLOS ◀️
SELECT lpad('*', CAST(ordinality AS int), '*')
FROM generate_series(10, 2, -2) WITH ordinality

-- Usamos SELECT.
-- Usamos lpad para rellenar.
-- CAST para que el valor sea un integer.
-- ORDINALITY para la ordinalidad, osea 1, 2,3 etc.
-- FROM que lo tome del rango 
-- generate_series para el rango con sus valores entre parentesis.
-- WITH orfinality.
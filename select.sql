--- SELECT 📌

-- SELECT basico ◀️
SELECT *;

-- Alias en SELECT ◀️
SELECT field AS alias 

-- SELECT contador ◀️
SELECT COUNT(id);

-- SELECT suma ◀️
SUM(quantity);

-- SELECT promedio ◀️
AVG(age);

-- SELECT minimo ◀️
SELECT MIN (date);

--SELECT maximo ◀️
SELECT MAX(quantity);


--- CASOS especiales de SELECT 📌

-- SELECT if ◀️
SELECT IF (500<1000, 'YES', 'NO');

-- SELECT condicional con CASE y WHEN ◀️
SELECT OrderID, Quantity,
CASE
	WHEN Quantity > 30 THEN 'OVER 30'
	WHEN Quantity = 30 THEN 'Equal 30'
	ELSE 'Under 30'
END AS QuantityText


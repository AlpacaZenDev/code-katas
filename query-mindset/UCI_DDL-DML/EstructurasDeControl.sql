

/* =========================================
Ejercicio 1. Condicional IF
========================================= */

DECLARE @numero1 INT = 5;
DECLARE @numero2 INT = 5;

SELECT 
	'Inicia el IF'
IF (@numero1 = @numero2)
BEGIN
	SELECT
		'Es verdadero'
END
	SELECT
		'Finazaliza el IF'

/* =========================================
Ejercicio 2. Doble condicional (IF - ELSE)
========================================= */

DECLARE @animal1 VARCHAR(40) = 'Gato';
DECLARE @animal2 VARCHAR(40) = 'avellana';

IF (@animal1 = @animal2)
BEGIN
	SELECT
		'Los animales son iguales'
END
ELSE
BEGIN
	SELECT
		'Los animales son distintos'
END;


/* =========================================
Ejercicio 3. Doble condicional (IF - ELSE)
========================================= */

DECLARE @variable1 INT = 5;
DECLARE @variable2 VARCHAR(10) = '5';

IF (@variable1 = @variable2)
BEGIN
	SELECT
		'Los números son iguales'
END
ELSE
BEGIN
	SELECT
		'Los números son distintos'
END;

/* =========================================
Ejercicio 4. WHILE
========================================= */

DECLARE @indice INT = 0
DECLARE @final INT = 5

WHILE (@indice < @final)
BEGIN
	SELECT
		'Hola, Mundo!' + ' ' + CAST(@indice AS VARCHAR(1))
	SELECT
		@indice = @indice + 1
END;

/* =========================================
Ejercicio 5. WHILE
========================================= */

DECLARE @indice1 INT = 0
DECLARE @final1 INT = 100

WHILE (@indice1 < @final1)
BEGIN
	SELECT
		@indice1
	SELECT
		@indice1 = @indice1 + 1
		/* DDL - DML */
END;

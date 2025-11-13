USE Facturacion
GO

/* ================================= */
/*					IF				 */
/* ================================= */

DECLARE @numero1 INT = 10
DECLARE @numero2 INT = 10

SELECT 
	'Inicia el --> IF'
IF (@numero1 = @numero2)
BEGIN	
	SELECT 
		'Es verdadero'
	/* DDL - DML */
END
SELECT 
	'Finaliza el --> IF'

DECLARE @animal1 VARCHAR(20) = 'Perro'
DECLARE @animal2 VARCHAR(20) = 'pERRO'

IF (@animal1 = @animal2)
BEGIN
	SELECT 
		'Los animales son iguales'
	/* DDL - DML */
END
ELSE
BEGIN
	SELECT 
		'Los animales son distintos'
	/* DDL - DML */
END

DECLARE @numero3 INT = 5
DECLARE @numero4 VARCHAR(1) = '5'

IF (@numero4 = @numero3)
BEGIN
	SELECT 
		'Los numeros son iguales'
	/* DDL - DML */
END
ELSE
BEGIN
	SELECT 
		'Los numeros son distintos'
	/* DDL - DML */
END

/* ================================= */
/*				WHILE				 */
/* ================================= */
DECLARE @indice INT = 0
DECLARE @final INT = 5

WHILE (@indice < @final)
BEGIN
	SELECT 
		'Hola mundo! ' + CAST(@indice AS VARCHAR(1))
	SELECT 
		@indice = @indice + 1
END

/* ================================= */
/*				WHILE				 */
/* ================================= */
DECLARE @indice1 INT = 0
DECLARE @final1 INT = 100000

WHILE (@indice1 < @final1)
BEGIN
	SELECT 
		@indice1
	SELECT 
		@indice1 = @indice1 + 1
	/* DDL - DML */
END
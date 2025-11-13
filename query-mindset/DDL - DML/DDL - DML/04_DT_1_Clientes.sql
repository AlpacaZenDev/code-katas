USE Facturacion
GO

DECLARE @tmpNumeroDocumento TABLE
(
	id INT PRIMARY KEY IDENTITY(1,1),
	cNroDocumento VARCHAR(20)
)

DECLARE @indice INT = 0
DECLARE @final INT = 50000

WHILE (@indice < @final)
BEGIN
	
	DECLARE @numero1 INT,
			@numero2 INT,
			@numero1Texto VARCHAR(4),
			@numero2Texto VARCHAR(4),
			@cNroDocumento VARCHAR(20)

	SELECT	
		@numero1 = (SELECT 
						FLOOR(RAND() * 9899 + 101))

	SELECT	
		@numero2 = (SELECT 
						FLOOR(RAND() * 8999 + 1001))

	SELECT 
		@numero1Texto = CAST(@numero1 AS VARCHAR(4))

	IF (LEN(@numero1Texto) = 3)
	BEGIN
		SELECT 
			@numero1Texto = '0'  + @numero1Texto
	END

	SELECT 
		@numero2Texto = CAST(@numero2 AS VARCHAR(4))

	SELECT 
		@cNroDocumento = @numero1Texto + @numero2Texto

	IF NOT EXISTS (	SELECT 
		A.nCodigoCliente
	FROM Clientes A
	WHERE A.cNroDocumento = @cNroDocumento )
	BEGIN
		INSERT INTO Clientes
		VALUES
		('Jean Carlos Póma Sánchez', @cNroDocumento, 1)

		SELECT 
			@indice = @indice + 1		
	END

	PRINT(@indice)
	
END


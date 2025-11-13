USE Facturacion
GO

DECLARE @tmpGeneros TABLE
(
	nCodigoGenero INT PRIMARY KEY IDENTITY(1,1),
	cDescripcion VARCHAR(100),
	cSimbolo CHAR(1),
	lEstado BIT
)

INSERT INTO @tmpGeneros
(cDescripcion,	cSimbolo,	lEstado)
VALUES
('Femenino',	'F',	1),
('Masculino',	'M',	1)

DECLARE @nCodigoGenero INT 
DECLARE @nCantidadGeneros INT

SELECT 
	@nCantidadGeneros = (SELECT 
								COUNT(A.nCodigoGenero)
							FROM @tmpGeneros A)

SELECT 
	@nCodigoGenero = RAND() * @nCantidadGeneros + 1

SELECT 
	*
FROM @tmpGeneros A
WHERE A.nCodigoGenero = @nCodigoGenero
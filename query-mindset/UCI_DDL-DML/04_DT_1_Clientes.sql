USE dbFacturacion;
GO
/*
INSERT INTO tblClientes
(cNombreCompleto,					cNroDocumento,		lEstado)
VALUES
('Jean Carlos Póma Sánchez',		'43187614',			1),
('Carlos Juan Quispe García',		'41627409',			1),
('Luis Carlos Diaz Gomez',			'76129876',			1),
('Maria Luisa Fernandez Osores',	'43127865',			1),
('Lucas Jose Miranda Rodriguez',	'76129881',			1),
('Rosario Miranda Torres',			'73198740',			1),
('Luzmila Valencia Torres',			'72861320',			1);
*/


DECLARE @tmpNumeroDocumento TABLE
(
	id INT PRIMARY KEY IDENTITY(1,1),
	cNumeroDocumento VARCHAR(20)
)

DECLARE @indice INT = 0
DECLARE @final INT = 10000

WHILE (@indice < @final)
BEGIN

	DECLARE @num1 INT
	DECLARE @num2 INT
	DECLARE @num1Text VARCHAR(4)
	DECLARE @num2Text VARCHAR(4)
	DECLARE @cNumeroDocumento VARCHAR(20)

	SELECT 
		@num1 = (SELECT
				FLOOR(RAND() * 9899) + 101)
	SELECT 
		@num2 = (SELECT
				FLOOR(RAND() * 8999) + 1001)
	SELECT 
		@num1Text = CAST(@num1 AS VARCHAR(4))
	IF (LEN(@num1Text) = 3)
	BEGIN
		SELECT
			@num1Text = '0' + @num1Text
	END

	SELECT
		@num2Text = CAST(@num2 AS varchar(4))

	SELECT
		@cNumeroDocumento = @num1Text + @num2Text

	IF NOT EXISTS
	(
		SELECT
			A.id
		FROM @tmpNumeroDocumento A 
		WHERE A.cNumeroDocumento = @cNumeroDocumento
	)
		BEGIN
			INSERT INTO @tmpNumeroDocumento
			VALUES
			(@cNumeroDocumento)

			SELECT
				@indice = @indice + 1 
		END	
END

SELECT
	*
FROM @tmpNumeroDocumento A

/* CONSULTA DE COMPROBACION */
SELECT 
	A.cNumeroDocumento,
	COUNT(A.id)
FROM @tmpNumeroDocumento A
GROUP BY A.cNumeroDocumento
HAVING COUNT(A.id) > 1


USE Facturacion
GO

DECLARE @tmpNombres TABLE
(
	nCodigoNombre INT PRIMARY KEY IDENTITY(1,1),
	cDescripcion VARCHAR(100)
)

INSERT INTO @tmpNombres
(cDescripcion)
VALUES
('Mía'),
('Alessia'),
('Camila'),
('Danna'),
('Zoe'),
('Luciana'),
('Aitana'),
('María'),
('Briana'),
('Luz'),
('Ariana'),
('Valentina'),
('Luana'),
('Sofía'),
('Emma'),
('Antonella'),
('Emily'),
('Lía'),
('Kiara'),
('Ana'),
('Isabel'),
('Renata'),
('Juliana'),
('Gabriela'),
('Carmen'),
('Natalia'),
('Valeria'),
('Andrea'),
('Carla'),
('Paola'),
('Fernanda'),
('Victoria'),
('Mariana'),
('Margarita'),
('Ruth'),
('Diana'),
('Elizabeth'),
('Milagros'),
('Laura'),
('Lina'),
('Verónica'),
('Susana'),
('Marta'),
('Patricia'),
('Ivana'),
('Carla'),
('Alejandra'),
('Natividad'),
('Lourdes'),
('Jessica')

DECLARE @nCodigoNombre1 INT
DECLARE @nCodigoNombre2 INT
DECLARE @nCantidadNombres INT
DECLARE @cPrimerNombre VARCHAR(100)
DECLARE @cSegunNombre VARCHAR(100)
DECLARE @lContinuar BIT = 1

SELECT 
	@nCantidadNombres = (SELECT 
							COUNT(A.nCodigoNombre)
						FROM @tmpNombres A)

SELECT 
	@nCodigoNombre1 = RAND() * @nCantidadNombres + 1

SELECT 
	@cPrimerNombre = A.cDescripcion
FROM @tmpNombres A
WHERE A.nCodigoNombre = @nCodigoNombre1

WHILE @lContinuar = 1
BEGIN
	SELECT 
		@nCodigoNombre2 = RAND() * @nCantidadNombres + 1
	IF @nCodigoNombre1 != @nCodigoNombre2
	BEGIN
		SELECT 
			@lContinuar = 0
	END
END

SELECT 
	@cSegunNombre = A.cDescripcion
FROM @tmpNombres A
WHERE A.nCodigoNombre = @nCodigoNombre2

SELECT 
	@cPrimerNombre, @cSegunNombre
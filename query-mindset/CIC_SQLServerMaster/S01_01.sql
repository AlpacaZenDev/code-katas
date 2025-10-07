USE DBPRUEBA;
GO

DROP TABLE IF EXISTS tblGeneros;

CREATE TABLE tblGeneros
(
	nCodigoGenero INT PRIMARY KEY IDENTITY(1,1),
	cDescription VARCHAR(20),
	lEstado	BIT
)

INSERT INTO tblGeneros
(cDescription, lEstado)
VALUES
('Femenino', 1),
('Masculino', 1)

SELECT
	*
FROM tblGeneros A

/******************************
[Alt] + [F1] -> ¿Propiedades de la tabla?
[Alt] + [Shift] -> Selección multilínea

/*******************************/
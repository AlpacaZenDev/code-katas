
-- Creación de tablas
Create database Facturacion;
GO

Create database dbClientes;
GO
--


USE dbClientes
GO

EXEC InsertarPersonas_SP 1

SELECT
	*
FROM Personas A

--
EXEC [dbo].[InsertarPersonas_SP] 10000

SELECT 
	*
FROM Personas A


--


/* EVALUACIÓN A PRESENTAR (2025-11-12) */


USE dbClientes;
GO

SELECT
	A. cNumeroDocumento,
	COUNT(*)
FROM Personas A
	GROUP BY A.cNumeroDocumento
ORDER BY 2 DESC


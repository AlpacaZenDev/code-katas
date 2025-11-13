USE Facturacion
GO

DECLARE @texto1 CHAR(5) = 'Hola!mundo!'
DECLARE @texto2 VARCHAR(10) = 'Hola mundo!'

SELECT 
	@texto1, @texto2

DECLARE @texto3 NCHAR(5) = 'Hola!mundo!'
DECLARE @texto4 NVARCHAR(10) = 'Hola mundo!'

SELECT 
	@texto3, @texto4

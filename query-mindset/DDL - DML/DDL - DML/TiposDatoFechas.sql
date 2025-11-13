USE Facturacion
GO

DECLARE @tiempo1 DATE = GETDATE()
DECLARE @tiempo3 TIME = GETDATE()
DECLARE	@tiempo2 DATETIME = GETDATE()
DECLARE @tiempo4 SMALLDATETIME = GETDATE() /* 1900 - 2079 */

SELECT 
	@tiempo1, @tiempo3, @tiempo2, @tiempo4

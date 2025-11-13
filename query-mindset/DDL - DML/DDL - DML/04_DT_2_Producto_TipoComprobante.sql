USE Facturacion
GO

INSERT INTO Productos
(cDescripcion, nPrecioUnitario, lEstado)
VALUES
('Turron', 20, 1),
('Paneton', 30, 1),
('Keke', 5, 1),
('Pizza', 40, 1),
('Hamburguesa', 20, 1),
('Pan', 20, 1),
('Torta', 40, 1),
('Pastel', 50, 1)

INSERT INTO TipoComprobante
(cDescripcion,				cSerieActual,	lEstado)
VALUES
('Factura',					'FA01',			1),
('Boleta de venta',			'BV01',			1),
('Recibo por honorarios',	'RH01',			1),
('Nota de credito',			'NC01',			1),
('Nota de débito',			'ND01',			1)
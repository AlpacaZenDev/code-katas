USE dbClientes
GO

TRUNCATE TABLE Generos
GO

INSERT INTO Generos
(cDescripcion,	cSimbolo,	dFechaRegistro,	lEstado)
VALUES
('Femenino',	'F',		GETDATE(),		1),
('Masculino',	'M',		GETDATE(),		1)
GO

TRUNCATE TABLE TipoDocumento
GO

INSERT INTO TipoDocumento
(cDescripcion,						cAbreviacion,	lEstado)
VALUES
('Documento nacional de identidad',	'DNI',			1)
GO

TRUNCATE TABLE NombresDisponibles
GO

INSERT INTO NombresDisponibles
(cNombre, nCodigoGenero)
VALUES
('Liam', 2),
('Thiago', 2),
('Dylan', 2),
('Gael', 2),
('Mateo', 2),
('Luis', 2),
('Juan', 2),
('Axel', 2),
('Ian', 2),
('Ángel', 2),
('Santiago', 2),
('Lucas', 2),
('Carlos', 2),
('José', 2),
('Iker', 2),
('Gabriel', 2),
('Mathias', 2),
('Sebastián', 2),
('Diego', 2),
('Joaquín', 2),
('Daniel', 2),
('David', 2),
('Álvaro', 2),
('Antonio', 2),
('Emilio', 2),
('Felipe', 2),
('Javier', 2),
('Marco', 2),
('Samuel', 2),
('Ricardo', 2),
('Fernando', 2),
('Jean', 2),
('Eduardo', 2),
('Raúl', 2),
('Miguel', 2),
('Jorge', 2),
('Pedro', 2),
('Víctor', 2),
('Óscar', 2),
('Hugo', 2),
('Héctor', 2),
('Manuel', 2),
('Nicolás', 2),
('Owen', 2),
('Martín', 2),
('Roberto', 2),
('Francisco', 2),
('Gilberto', 2),
('Ignacio', 2),
('Sergio', 2)
GO

INSERT INTO NombresDisponibles
(cNombre, nCodigoGenero)
VALUES
('Mía', 1),
('Alessia', 1),
('Camila', 1),
('Danna', 1),
('Zoe', 1),
('Luciana', 1),
('Aitana', 1),
('María', 1),
('Briana', 1),
('Luz', 1),
('Ariana', 1),
('Valentina', 1),
('Luana', 1),
('Sofía', 1),
('Emma', 1),
('Antonella', 1),
('Emily', 1),
('Lía', 1),
('Kiara', 1),
('Ana', 1),
('Isabel', 1),
('Renata', 1),
('Juliana', 1),
('Gabriela', 1),
('Carmen', 1),
('Natalia', 1),
('Valeria', 1),
('Andrea', 1),
('Carlita', 1),
('Paola', 1),
('Fernanda', 1),
('Victoria', 1),
('Mariana', 1),
('Margarita', 1),
('Ruth', 1),
('Diana', 1),
('Elizabeth', 1),
('Milagros', 1),
('Laura', 1),
('Lina', 1),
('Verónica', 1),
('Susana', 1),
('Marta', 1),
('Patricia', 1),
('Ivana', 1),
('Carla', 1),
('Alejandra', 1),
('Natividad', 1),
('Lourdes', 1),
('Jessica', 1)
GO

TRUNCATE TABLE ApellidosDisponibles
GO

INSERT INTO ApellidosDisponibles
(cApellido)
VALUES
('Quispe'),
('Flores'),
('Sánchez'),
('García'),
('Rodríguez'),
('Huamán'),
('Rojas'),
('Vásquez'),
('Mamani'),
('López'),
('Ramos'),
('Pérez'),
('Torres'),
('Díaz'),
('González'),
('Ramírez'),
('Mendoza'),
('Chávez'),
('Espinoza'),
('Castillo'),
('Salazar'),
('Cornejo'),
('Aguilar'),
('Vega'),
('Muñoz'),
('Herrera'),
('Castro'),
('Vargas'),
('Medina'),
('Guerrero'),
('Pacheco'),
('Villanueva'),
('Salinas'),
('Cabrera'),
('Reyes'),
('Delgado'),
('Ortiz'),
('Silva'),
('Hidalgo'),
('Paredes'),
('Acosta'),
('Peña'),
('Mejía'),
('Santiago'),
('Juárez'),
('Ríos'),
('Carrasco'),
('Castañeda'),
('Soto'),
('León')
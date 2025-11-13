/*=============================
		DIRECCIONAR
=============================*/
USE dbClientes;
GO

SELECT
	*
FROM Personas A

/* Cláusula WHERE GROUP BY HAVING ORDER */
WHERE A.lEstado = 1


/* WHERE = IN LIKE (NOT) */

SELECT
	*
FROM Personas A
WHERE A.cNumeroDocumento = '42538115'

SELECT
	*
FROM Personas A
WHERE A.cNumeroDocumento IN ('94176813', '65161880', '98916913')

SELECT
	*
FROM Personas A
WHERE A.cNombres = '%Reyes%'


-- ¿Cuántas personas tienen el mismo número de documento?

SELECT 
	DISTINCT
	A.cPrimerNombre
FROM PersonaNatural A


---
-- 1. Obtener nombres disponibles según la fecha más reciente
SELECT 
    *
FROM NombresDisponibles AS A
WHERE A.dfechaRegistro = @dFechaReciente;

-- 2. ¿Cuáles son los géneros disponibles en la tabla Generos?
SELECT 
    *
FROM Generos AS A
WHERE A.lEstado = 1;


-- 3. ¿Cuántas personas tienen el mismo tipo de documento en la tabla Personas?
SELECT 
    A.nCodigoTipoDocumento,
    COUNT(A.nCodigoPersona) AS TotalPersonas
FROM Personas AS A
GROUP BY A.nCodigoTipoDocumento;

-- 4. ¿Cuántas personas naturales tienen el mismo género en la tabla PersonaNatural?
SELECT 
    A.nCodigoGenero,
    COUNT(A.nCodigoPersonaNatural) AS TotalPersonasNaturales
FROM PersonaNatural AS A
GROUP BY A.nCodigoGenero;


-- 5. ¿Cuántos apellidos distintos están registrados en la tabla ApellidosDisponibles por cada estado?
SELECT 
    A.cApellido,
    A.lEstado,
    COUNT(A.nCodigoApellidoDisponible) AS TotalRegistros
FROM ApellidosDisponibles AS A
GROUP BY 
    A.cApellido,
    A.lEstado;

-- 1. Apellidos distintos por estado
SELECT 
    A.cApellido,
    A.lEstado,
    COUNT(A.nCodigoApellidoDisponible) AS TotalRegistros
FROM ApellidosDisponibles AS A
GROUP BY 
    A.cApellido,
    A.lEstado;


-- ? 2. ¿Qué géneros tienen más registros en la tabla PersonaNatural?
-- 2.1. Tabla temporal para acumular cantidades
DECLARE @tmpCantidadRegistrosByGenero TABLE
(
    nCodigoGenero INT,
    nCantidadRegistro INT
);

-- 2.2. Insertar conteo por género
INSERT INTO @tmpCantidadRegistrosByGenero (nCodigoGenero, nCantidadRegistro)
SELECT 
    A.nCodigoGenero,
    COUNT(A.nCodigoPersonaNatural) AS TotalRegistros
FROM PersonaNatural AS A
GROUP BY A.nCodigoGenero;

--2.3. Obtener la cantidad máxima
DECLARE @nCantidadRegistro INT;

SELECT 
    @nCantidadRegistro = MAX(A.nCantidadRegistro)
FROM @tmpCantidadRegistrosByGenero AS A;

--2.4. Listar los géneros que tienen la mayor cantidad de registros
SELECT 
    *
FROM @tmpCantidadRegistrosByGenero AS A
INNER JOIN Generos AS B
    ON A.nCodigoGenero = B.nCodigoGenero
WHERE A.nCantidadRegistro = @nCantidadRegistro;


---
--1. ¿Cuántos registros existen por apellido paterno?
SELECT 
    A.cApellidoPaterno,
    COUNT(*) AS TotalRegistros
FROM PersonaNatural AS A
GROUP BY A.cApellidoPaterno
ORDER BY 2 DESC;


--2. ¿Cuántos registros existen por apellido materno?
SELECT 
    A.cApellidoMaterno,
    COUNT(*) AS TotalRegistros
FROM PersonaNatural AS A
GROUP BY A.cApellidoMaterno
ORDER BY 2 DESC;


--3. ¿Cuántos registros existen por primer nombre?
SELECT 
    A.cPrimerNombre,
    A.nCodigoGenero,
    COUNT(*) AS TotalRegistros
FROM PersonaNatural AS A
GROUP BY 
    A.cPrimerNombre,
    A.nCodigoGenero
ORDER BY 3 DESC;


--4. ¿Cuántos registros existen por segundo nombre?
SELECT 
    A.cSegundoNombre,
    A.nCodigoGenero,
    COUNT(*) AS TotalRegistros
FROM PersonaNatural AS A
GROUP BY 
    A.cSegundoNombre,
    A.nCodigoGenero
ORDER BY 3 DESC;

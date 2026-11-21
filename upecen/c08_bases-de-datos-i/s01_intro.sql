-- 1. Comprobar la versión activa del motor SGBD
SELECT sqlite_version(); -- En entornos SQLite



-- SELECT version(); -- En entornos PostgreSQL / MySQL
-- 2. Consultar los metadatos (tablas existentes) en SQLite
SELECT name, type FROM sqlite_master WHERE type = 'table';


/*
 * SCRIPT PARA LA CREACIÓN DE LAS TABLAS DE LA PARTE C 
 * */

-- 1. Tabla de Docentes
CREATE TABLE Docentes (
    id_docente INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

-- 2. Tabla de Estudiantes
CREATE TABLE Estudiantes (
    id_estudiante INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL
);

-- 3. Tabla de Asignaturas (vinculada a Docentes)
CREATE TABLE Asignaturas (
    id_asignatura INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    id_docente INTEGER NOT NULL,
    FOREIGN KEY (id_docente) REFERENCES Docentes(id_docente)
);

-- 4. Tabla de Calificaciones (vincula Estudiantes con Asignaturas)
CREATE TABLE Calificaciones (
    id_calificacion INTEGER PRIMARY KEY AUTOINCREMENT,
    id_estudiante INTEGER NOT NULL,
    id_asignatura INTEGER NOT NULL,
    nota REAL NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (id_asignatura) REFERENCES Asignaturas(id_asignatura)
);



---

-- 1. Insertar al docente (se registra una sola vez)
INSERT INTO Docentes (nombre, email) 
VALUES ('Mg. Carlos Mendoza', 'cmendoza@upecen.edu.pe');

-- 2. Insertar a los estudiantes únicos
INSERT INTO Estudiantes (nombre) 
VALUES 
    ('Lucía Paredes'),
    ('Jorge Quispe');

-- 3. Insertar las asignaturas (vinculadas al id_docente = 1)
INSERT INTO Asignaturas (nombre, id_docente) 
VALUES 
    ('Álgebra Lineal', 1),
    ('Matemática Discreta', 1);

-- 4. Insertar las calificaciones (relacionando estudiante y asignatura)
INSERT INTO Calificaciones (id_estudiante, id_asignatura, nota) 
VALUES 
    (1, 1, 16), -- Lucía Paredes (1) en Álgebra Lineal (1) -> 16
    (2, 1, 14), -- Jorge Quispe (2) en Álgebra Lineal (1) -> 14
    (1, 2, 18); -- Lucía Paredes (1) en Matemática Discreta (2) -> 18

    
---
SELECT 
    c.id_calificacion AS cod_fila,
    d.nombre AS docente,
    d.email AS email_docente,
    a.nombre AS asignatura,
    e.nombre AS estudiante,
    c.nota
FROM Calificaciones c
JOIN Estudiantes e ON c.id_estudiante = e.id_estudiante
JOIN Asignaturas a ON c.id_asignatura = a.id_asignatura
JOIN Docentes d ON a.id_docente = d.id_docente;


    
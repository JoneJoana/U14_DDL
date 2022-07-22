CREATE DATABASE ex12;
USE ex12;

DROP TABLE IF EXISTS ALUMNOS;
DROP TABLE IF EXISTS CURSOS;
DROP TABLE IF EXISTS PROFESORES;

CREATE TABLE PROFESORES (
	dni varchar(9) PRIMARY KEY,
	nombre varchar(50) UNIQUE,
	apellido1 varchar(50),
	apellido2 varchar(50),
	direccion varchar(150),
	titulo varchar(50),
	gana float NOT NULL
);

CREATE TABLE CURSOS (
	codigoCurso varchar(25) PRIMARY KEY,
	nombreCurso varchar(255) UNIQUE,
	dniProfesor varchar(9),
	maximoAlumnos int,
	fechaInicio date,
	fechaFin date,
	numHoras int,
	CHECK (fechaInicio < fechaFin),
	FOREIGN KEY (dniProfesor) REFERENCES PROFESORES(dni) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ALUMNOS(
	dni varchar(9),
	nombre varchar(50),
	apellido1 varchar(50),
	apellido2 varchar(50),
	dirección varchar(150),
	sexo char(1),
    CHECK(sexo='H' OR sexo='M'),
	fechaNacimiento date,
	curso varchar(10) NOT NULL,
	FOREIGN KEY (curso) REFERENCES CURSOS(codigoCurso) ON DELETE CASCADE ON UPDATE CASCADE
);
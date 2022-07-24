CREATE DATABASE ex12;
USE ex12;

CREATE TABLE Profesiones(
	idProfesion int PRIMARY KEY,
    nombreProfesion varchar(25),
    tipoProfesion varchar(25)
);

CREATE TABLE Empresas(
	cif varchar(9) PRIMARY KEY,
    nombre varchar(100),
    direccion varchar(100),
    telefono varchar(100),
    idInterno varchar(100)
);

CREATE TABLE Proyectos(
	idProyecto int PRIMARY KEY,
    fechaPrevista date,
    fechaInicio date,
    fechaFin date,
    idEmpresa varchar(9),
    CONSTRAINT FK_ProyectosEmpresa FOREIGN KEY (idEmpresa) REFERENCES Empresas(cif)
);

CREATE TABLE Trabajadores(
	idTrabajador int PRIMARY KEY,
    dni varchar(9),
    nombre varchar(25),
    apellidos varchar(25)
);

CREATE TABLE Realiza(
	idTrabajador int,
    idProyecto int,
    idProfesion int,
    horas int,
    PRIMARY KEY(idTrabajador, idProyecto, idProfesion),
    CONSTRAINT FK_RealizaTrabajador FOREIGN KEY (idTrabajador) REFERENCES Trabajadores(idTrabajador),
    CONSTRAINT FK_RealizaProyecto FOREIGN KEY (idProyecto) REFERENCES Proyectos(idProyecto),
    CONSTRAINT FK_RealizaProfesion FOREIGN KEY (idProfesion) REFERENCES Profesiones(idProfesion)
);

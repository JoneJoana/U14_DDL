CREATE DATABASE u14_ex4;
use u14_ex4;

CREATE TABLE IF NOT EXISTS Departamentos(
	codigo int UNSIGNED PRIMARY KEY,
    nombre nvarchar(100),
    presupuesto int
);

CREATE TABLE IF NOT EXISTS Empleados(
	DNI varchar(8) PRIMARY KEY,
    nombre nvarchar(100),
    departamento int DEFAULT 0,
    CONSTRAINT FK_empleadoDepartamento FOREIGN KEY(departamento) REFERENCES Departamentos(codigo)
);

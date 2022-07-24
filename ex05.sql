CREATE DATABASE u14_ex5;
use u14_ex5;

CREATE TABLE IF NOT EXISTS Almacenes(
	codigo int PRIMARY KEY,
    lugar nvarchar(100),
    capacidad int
);

CREATE TABLE IF NOT EXISTS Cajas(
	numRef char(5) PRIMARY KEY,
    contenido nvarchar(100),
    valor int,
    almacen int,
    FOREIGN KEY(almacen) REFERENCES Almacenes(codigo)
);

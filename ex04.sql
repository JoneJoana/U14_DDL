CREATE DATABASE u14_ex3;

use u14_ex3;

CREATE TABLE Fabricantes
(
IdCodigo int primary key,
Nombre varchar (100)
);

CREATE TABLE Articulos
(
IdCodigo int,
Nombre varchar (100),
Precio int,
Fabricante int,
PRIMARY KEY (IdCodigo),
CONSTRAINT FK_Fabricante FOREIGN KEY (IdCodigo) REFERENCES Fabricantes (idCodigo)
);

show tables;

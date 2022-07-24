CREATE DATABASE u14_ex6;

use u14_ex6;

CREATE TABLE Peliculas
(
idCodigoPelicula int primary key,
Nombre varchar (100),
CalificacionEdad int
);

CREATE TABLE Salas
(
idCodigo int not null,
Nombre varchar(100),
idCodigoPelicula int,
PRIMARY KEY (idCodigo, idCodigoPelicula),
CONSTRAINT FK_CodigoPelicula FOREIGN KEY (idCodigoPelicula) REFERENCES Peliculas (idCodigoPelicula)
);

show tables;

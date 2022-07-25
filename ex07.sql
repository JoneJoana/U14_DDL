CREATE DATABASE u14_ex7;

use u14_ex7;

CREATE TABLE Despachos
(
Numero int primary key,
Capacidad int
);

CREATE TABLE Directores
(
DNI varchar (8) primary key,
NomApels varchar (255),
Despacho int ,
DNIJefe varchar (8),
constraint FK_Despachos  Foreign key (Despacho) references Despachos(Numero),
constraint FK_Directores Foreign key (DNIJefe) references Directores (DNI) 
);

show tables;

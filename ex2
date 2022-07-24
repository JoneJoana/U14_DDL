CREATE DATABASE u14_ex2

use u14_ex2;

CREATE TABLE Libros
 (
 IdClaveLibro int not null,
 IdClaveEditorial smallint,
 Titulo varchar (60),
 Idioma varchar (15),
 Formato varchar (15),
 PRIMARY KEY (IdClaveLibro, IdClaveEditorial),
 CONSTRAINT FK_ClaveLibroEditorial FOREIGN KEY (IdClaveEditorial) REFERENCES Editoriales (IdClaveEditorial)
 );
 
 CREATE TABLE Temas
 (
 idClaveTema smallint primary key,
 Nombre varchar (40)
 );
 
 CREATE TABLE Autores
 (
 idClaveAutor int primary key,
 Nombre varchar (60)
 );
 
 CREATE TABLE Editoriales 
 (
 idClaveEditorial smallint primary key,
 Nombre varchar (60),
 Direccion varchar(60),
 Telefono varchar (15)
 );
 
  CREATE TABLE Ejemplares 
 (
 idClaveEjemplar int not null,
 idClaveLibro int, 
 NumeroOrden smallint,
 Edicion smallint,
 Ubicacion varchar (15),
 Categoria char,
 PRIMARY KEY (idClaveEjemplar, idClaveLibro),
 CONSTRAINT FK_ClaveEjemplarLibro FOREIGN KEY (idClaveLibro) REFERENCES Libros(IdClaveLibro)
 );
 
 CREATE TABLE Socios
 (
 idClaveSocio int primary key,
 Nombre varchar(60),
 Direccion varchar(60),
 Telefono varchar (15),
 Categoria char
 );
 
 CREATE TABLE Prestamo
 (
 idClaveSocio int,
 idClaveEjemplar int,
 NumeroOrden smallint,
 FechaPrestamo date,
 FechaDevolucion date,
 Notas blob,
 PRIMARY KEY (idClaveSocio,idClaveEjemplar),
 CONSTRAINT FK_ClaveSocioEjemplar FOREIGN KEY (idClaveSocio) REFERENCES Socios (idClaveSocio),
 CONSTRAINT FK_ClaveEjemplarSocio FOREIGN KEY (idClaveEjemplar) REFERENCES Ejemplares (idClaveEjemplar)
 );
 
 CREATE TABLE TrataSobre
 (
 IdClaveLibro int,
 idClaveTema smallint,
 PRIMARY KEY (idClaveLibro,IdClaveTema),
CONSTRAINT FK_ClaveLibroTema FOREIGN KEY (idClaveLibro) REFERENCES Libros (idClaveLibro),
 CONSTRAINT FK_ClaveTemaLibro FOREIGN KEY (idClaveTema) REFERENCES Temas (idClaveTema)
 );
 
 CREATE TABLE EscritoPor
 (
 idClaveLibro int,
 idClaveAutor int,
 PRIMARY KEY (idClaveLibro,IdClaveAutor),
 CONSTRAINT FK_ClaveLibroAutor FOREIGN KEY (idClaveLibro) REFERENCES Libros (idClaveLibro),
 CONSTRAINT FK_ClaveAutorLibro FOREIGN KEY (idClaveAutor) REFERENCES Autores (idClaveAutor)
 );
 
 show tables;

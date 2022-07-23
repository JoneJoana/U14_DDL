CREATE DATABASE ex5;
USE ex5;

CREATE TABLE TipoPiezas(
	tipo varchar(5) PRIMARY KEY,
    descripcion varchar(100)
);

CREATE TABLE Piezas(
	modelo int PRIMARY KEY,
    descripcion varchar(100),
    precio double,
    tipo varchar(5),
    CONSTRAINT FK_TipoPiezas FOREIGN KEY (tipo) REFERENCES TipoPiezas(tipo)
);

CREATE TABLE Almacenes(
	idAlmacen int PRIMARY KEY,
    descripcion varchar(100),
    direccion varchar(100)
);

CREATE TABLE Estanterias(
	idEstanteria varchar(10),
    idAlmacen int,
    CONSTRAINT FK_EstanteriasAlmacenes FOREIGN KEY (idAlmacen) REFERENCES Almacenes(idAlmacen),
    PRIMARY KEY(idEstanteria,idAlmacen)
);

CREATE TABLE Almacena(
	idAlmacen int,
    idEstanteria varchar(10),
    tipo varchar(5),
    modelo int,
    cantidad int,
    CONSTRAINT FK_AlmacenaAlmacen FOREIGN KEY (idAlmacen) REFERENCES Almacenes(idAlmacen),
    CONSTRAINT FK_AlmacenaEstanteria FOREIGN KEY (idEstanteria,idAlmacen) REFERENCES Estanterias(idEstanteria,idAlmacen),
    CONSTRAINT FK_AlmacenaTipo FOREIGN KEY (tipo) REFERENCES Piezas(tipo),
    CONSTRAINT FK_AlmacenaModelo FOREIGN KEY (modelo) REFERENCES Piezas(modelo),
	PRIMARY KEY(idAlmacen, idEstanteria, tipo, modelo)
);

CREATE TABLE Contiene(
	id int AUTO_INCREMENT PRIMARY KEY,
    tipo varchar(100),
    modelo int,
    tipoCompuesto varchar(5),
    modeloCompuesto int,
    CONSTRAINT FK_ContieneTipo FOREIGN KEY (tipo) REFERENCES Piezas(tipo),
    CONSTRAINT FK_ContieneModelo FOREIGN KEY (modelo) REFERENCES Piezas(modelo),
    CONSTRAINT FK_ContieneTipoCompuesto FOREIGN KEY (tipo) REFERENCES Piezas(tipo),
    CONSTRAINT FK_ContieneModeloCompuesto FOREIGN KEY (modelo) REFERENCES Piezas(modelo)
);



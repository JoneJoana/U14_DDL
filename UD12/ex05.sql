CREATE DATABASE ex5;
USE ex5;

CREATE TABLE TipoPiezas(
    tipo varchar(5) PRIMARY KEY,
    descripcion varchar(100)
);

CREATE TABLE Piezas(
    modelo int,    
    tipo varchar(5),   
    descripcion varchar(100),
    precio double,
    PRIMARY KEY(modelo, tipo),
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
    PRIMARY KEY(idAlmacen,idEstanteria),
    CONSTRAINT FK_EstanteriasAlmacenes FOREIGN KEY (idAlmacen) REFERENCES Almacenes(idAlmacen)
);

CREATE TABLE Almacena(
    idAlmacen int, #pk compuesta de estanteria
    idEstanteria varchar(10), #pk compuesta de estanteria
    tipo varchar(5), #pk compuesta de pieza
    modelo int, #pk compuesta de pieza
    cantidad int,
    PRIMARY KEY(idAlmacen,idEstanteria,tipo,modelo),
    CONSTRAINT FK_AlmacenaEstanteria FOREIGN KEY (idAlmacen,idEstanteria) REFERENCES Estanterias(idAlmacen,idEstanteria),
    CONSTRAINT FK_AlmacenaModelo FOREIGN KEY (modelo,tipo) REFERENCES Piezas(modelo,tipo)
);

CREATE TABLE Contiene(
    tipo varchar(5), # pk compuesta de tabla Piezas
    modelo int, # pk compuesta de tabla Piezas
    tipoCompuesto varchar(5),
    modeloCompuesto int,    
    CONSTRAINT FK_ContieneModelo FOREIGN KEY (modelo,tipo) REFERENCES Piezas(modelo,tipo),    
    CONSTRAINT FK_ContieneModeloCompuesto FOREIGN KEY (modelo,tipo) REFERENCES Piezas(modelo,tipo)
);

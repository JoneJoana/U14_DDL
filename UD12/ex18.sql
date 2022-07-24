CREATE DATABASE ex18;
USE ex18;

CREATE TABLE Personas(
	codigoPersonal int PRIMARY KEY,
    dni varchar(9),
    nombre varchar(25),
    apellidos varchar(25),
    fijo varchar(25),
    movil varchar(25),
    esTrabajador boolean,
    esCliente boolean
);

CREATE TABLE Inmuebles(
	codigoInmueble int PRIMARY KEY,
    metros varchar(25),
    descripcion varchar(25),
    direccion varchar(25)
);

CREATE TABLE Garajes(
	codigoInmueble int PRIMARY KEY,
    numGaraje varchar(25),
    planta varchar(25),
	CONSTRAINT FK_GarajeInmueble FOREIGN KEY (codigoInmueble) REFERENCES Inmuebles(codigoInmueble)
);
CREATE TABLE Pisos(
	codigoInmueble int PRIMARY KEY,
    codigoPiso varchar(25),
    codigoGaraje int,
    CONSTRAINT FK_PisoGaraje FOREIGN KEY (codigoGaraje) REFERENCES Garajes(codigoInmueble),
    CONSTRAINT FK_PisoInmueble FOREIGN KEY (codigoInmueble) REFERENCES Inmuebles(codigoInmueble)
);
CREATE TABLE Locales(
	codigoInmueble int PRIMARY KEY,
    uso varchar(25),
    servicio varchar(25),
	CONSTRAINT FK_LocalInmueble FOREIGN KEY (codigoInmueble) REFERENCES Inmuebles(codigoInmueble)
);
CREATE TABLE Compras(
	codigoCompra int PRIMARY KEY,
    fecha date,
    precio double,
    codigoInmueble int,
	CONSTRAINT FK_CompraInmueble FOREIGN KEY (codigoInmueble) REFERENCES Inmuebles(codigoInmueble)
);
CREATE TABLE Titulares(
	id int PRIMARY KEY,
    codigoCompra int,
    codigoPersonal int,
    CONSTRAINT FK_TitularCompra FOREIGN KEY (codigoCompra) REFERENCES Compras(codigoCompra),
	CONSTRAINT FK_TitularPersona FOREIGN KEY (codigoPersonal) REFERENCES Personas(codigoPersonal)
);
CREATE TABLE Alquileres(
	codigoAlquiler int PRIMARY KEY,
    codigoInmueble int,
    codigoGestor int,
    codigoArrendatario int,
    CONSTRAINT FK_AlquileresInmueble FOREIGN KEY (codigoInmueble) REFERENCES Inmuebles(codigoInmueble),
    CONSTRAINT FK_AlquileresGestor FOREIGN KEY (codigoGestor) REFERENCES Personas(codigoPersonal),
    CONSTRAINT FK_AlquileresArrendatario FOREIGN KEY (codigoArrendatario) REFERENCES Personas(codigoPersonal)
);

CREATE TABLE Pagos(
    codigoPago int,
    codigoAlquiler int,
    mes date,
    año date,
    valor double,
    CONSTRAINT FK_PagosInmueble FOREIGN KEY (codigoAlquiler) REFERENCES Alquileres(codigoAlquiler)
);




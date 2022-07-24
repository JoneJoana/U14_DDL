CREATE DATABASE IF NOT EXISTS u14_ex8;
use u14_ex8;

CREATE TABLE IF NOT EXISTS Piezas(
	codigo int PRIMARY KEY,
  nombre nvarchar(100)
);

CREATE TABLE IF NOT EXISTS Proveedores(
	id char(4) PRIMARY KEY,
  nombre nvarchar(100)
);

CREATE TABLE IF NOT EXISTS Suministra(
	cod_pieza int,
	idProveedor char(4),
  precio int,
  PRIMARY KEY(cod_pieza,idProveedor),
  FOREIGN KEY(cod_pieza) REFERENCES Piezas(codigo),
  FOREIGN KEY(idProveedor) REFERENCES Proveedores(id)
);

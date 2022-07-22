CREATE database U14_ex1;

use U14_ex1;

CREATE TABLE Estaciones(
  id int AUTO_INCREMENT,
  latitud int,
  longitud int,
  altitud int
  PRIMARY KEY(id)
  );

CREATE TABLE Muestra(
  id int not null,
  idEstaciones int,
  fecha date,
  temp_min double,
  temp_max double,
  precipitaciones double,
  hum_min double,
  hum_max double,
  vel_viento_min int,
  vel_viento_max int
  PRIMARY KEY(id),
  CONSTRAINT FK_EstacionMuestra FOREIGN KEY (idEstaciones) REFERENCES Estaciones(id)
  );

show tables;

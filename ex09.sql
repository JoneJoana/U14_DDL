CREATE DATABASE ex9;
USE ex9;

DROP TABLE IF EXISTS CIENTIFICOS;
DROP TABLE IF EXISTS PROYECTO;
DROP TABLE IF EXISTS ASIGNADOS_A;

CREATE TABLE CIENTIFICOS(
        dni varchar(8),
    nomApels nvarchar(255),
    PRIMARY KEY (dni)
);
CREATE TABLE PROYECTO (
        id char(4),
        nombre nvarchar(25),
        horas int,
        PRIMARY KEY (id)
);
CREATE TABLE ASIGNADOS_A(
        cientifico varchar(8),
        proyecto char(4),
        PRIMARY KEY (cientifico,proyecto),
        FOREIGN KEY (cientifico) REFERENCES CIENTIFICOS(dni),
        FOREIGN KEY (proyecto) REFERENCES PROYECTO(id)
);

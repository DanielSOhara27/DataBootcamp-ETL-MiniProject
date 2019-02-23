-- Drops the programming_db if it already exists --
DROP DATABASE IF EXISTS delitos_db;
-- Create a database called programming_db --
CREATE DATABASE delitos_db;

use delitos_db;

create table delitos(
	id int auto_increment NOT NULL,
    Año int,
    Mes varcharacter(20),
    Alcaldia varcharacter(100),
    Categoria_del_delito varcharacter(100),
    Delito varcharacter(100),
    Unidad_de_inestigacion varcharacter(20),
    Fecha_inicio varchar(20),
    Colonia varcharacter(100),
    Geopoint varchar(25),
    PRIMARY KEY(id)
);

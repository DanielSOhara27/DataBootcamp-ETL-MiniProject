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
    Geopoint varchar(50),
    Zona_patrullaje varcharacter(100),
    PRIMARY KEY(id)
);

create table zonas_patrullaje(
	id int auto_increment NOT NULL,
    Geopoint varcharacter(100),
    Geoshape text,
    Alcaldia varcharacter(100),
    sector_18 varcharacter(100),
    area_km2 double,
    x double,
    y double,
    mean_distance double,
    standard_deviation double,
    all_distances text,
    PRIMARY KEY(id)
);

create table delitos_zonas_patrullaje(
	id int auto_increment NOT NULL,
    delitos_FK int,
    zonas_patrullaje_Fk int,
    num_crimenes int,
    PRIMARY KEY(id)
);

describe delitos;
describe zonas_patrullaje;
describe delitos_zonas_patrullaje;
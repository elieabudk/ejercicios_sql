-- mostrar
show databases;

-- crear base de datos
create database elie;

-- crear una tabla
use elie;
create table comida(
	plato varchar(255),
    postre varchar(255),
    bebida varchar(255)
);

CREATE TABLE escuela(
	id int,
    cursos int ,
    tipo varchar(255),
    PRIMARY KEY (id)
);

SELECT * FROM escuela;

-- crear tabla

CREATE TABLE productos(  
	id int,
    producto varchar(255),
	cantidad int,
    precios int,
    grava_iva varchar(255),
    PRIMARY KEY (id)
);
-- mostrar tabla
SELECT * FROM productos;

-- llenar tabla

INSERT INTO carnicos (producto , cantidad , precios , grava_iva) VALUES ("carne" , 50 , 3 , "no");
INSERT INTO carnicos (producto , cantidad , precios , grava_iva) VALUES ("pollo" , 40 , 2 , "si");
INSERT INTO carnicos (producto , cantidad , precios , grava_iva) VALUES ("pescado" , 20 , 4 , "no");
INSERT INTO carnicos (producto , cantidad , precios , grava_iva) VALUES ("camaron" , 20 , 4 , "no");
INSERT INTO carnicos (producto , cantidad , precios , grava_iva) VALUES ("langosta" , 20 , 4 , "no");
INSERT INTO carnicos (producto , cantidad , precios , grava_iva) VALUES ("chancho" , 50 , 3 , "no");


SHOW  CREATE TABLE carnicos; 

-- estructura basica para creacion de tablas en mysql

CREATE TABLE `carnicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precios` int DEFAULT NULL,
  `grava_iva` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- CRUD
-- C = CREATE sirve para crear tablas
-- R = READ  sirve para leer las bases de datos
-- U = UPDATE sieve para actualizar las tablas
-- D = DELETE sirve para borras tablas o basaes de datos

-- mostrar tabla
SELECT * FROM carnicos;

-- mostrar columnas que seleccionemos

SELECT producto, grava_iva FROM carnicos; 

SELECT * FROM carnicos WHERE grava_iva = "no";

SELECT * FROM carnicos WHERE grava_iva = "no" AND Precios = 4;


-- modificacion de registros

UPDATE carnicos SET cantidad = 10 WHERE id = 5; 

-- eliminar registros

DELETE FROM carnicos WHERE id = 7;

DELETE FROM carnicos WHERE producto = "pollo";  -- eso da error xq solo se usa el ida

DELETE FROM carnicos;

--
-- Script was generated by Devart dbForge Studio 2019 for MySQL, Version 8.2.23.0
-- Product home page: http://www.devart.com/dbforge/mysql/studio
-- Script date 17/02/2020 12:12:28 a. m.
-- Server version: 8.0.18
-- Client version: 4.1
--

-- 
-- Disable foreign keys
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Set SQL mode
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- Set default database
--
USE store_hulk;

--
-- Drop table `categorias`
--
DROP TABLE IF EXISTS categorias;

--
-- Drop table `productos`
--
DROP TABLE IF EXISTS productos;

--
-- Drop table `stocks`
--
DROP TABLE IF EXISTS stocks;

--
-- Drop table `usuarios`
--
DROP TABLE IF EXISTS usuarios;

--
-- Set default database
--
USE store_hulk;

--
-- Create table `usuarios`
--
CREATE TABLE usuarios (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) DEFAULT NULL,
  perfil VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 3,
AVG_ROW_LENGTH = 8192,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create table `stocks`
--
CREATE TABLE stocks (
  id_producto INT(11) NOT NULL,
  stock DOUBLE DEFAULT NULL,
  PRIMARY KEY (id_producto)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 16384,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create table `productos`
--
CREATE TABLE productos (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(20) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  precio_venta DOUBLE NOT NULL,
  PRIMARY KEY (id, nombre),
  UNIQUE INDEX UK_productos_id(id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 13,
AVG_ROW_LENGTH = 1638,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

--
-- Create table `categorias`
--
CREATE TABLE categorias (
  id INT(11) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  Descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

-- 
-- Dumping data for table usuarios
--
INSERT INTO usuarios VALUES
(1, 'admin', 'admin'),
(2, 'usu1', 'vendedor');

-- 
-- Dumping data for table stocks
--
INSERT INTO stocks VALUES
(1, 20),
(2, 20),
(12, 20);

-- 
-- Dumping data for table productos
--
INSERT INTO productos VALUES
(1, 'a', 'dss', 23),
(2, 'Avengers', 'Historieta', 200000),
(3, 'Avengers2', 'Historieta', 23456),
(4, 'Avengers3', 'Historieta', 80000),
(5, 'Avengers', 'Historieta', 200000),
(6, 'Avengers', 'Historieta', 200000),
(7, 'Hulk', 'Historiets', 4000),
(8, 'hulk', 'historieta', 2000),
(12, 'y', 'y', 20),
(13, 'ProductoP', 'Producto de prueba TEst', 20);

-- 
-- Dumping data for table categorias
--
-- Table store_hulk.categorias does not contain any data (it is empty)

-- 
-- Restore previous SQL mode
-- 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Enable foreign keys
-- 
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
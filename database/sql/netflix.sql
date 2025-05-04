DROP DATABASE IF EXISTS netflix_gaming;
CREATE DATABASE netflix_gaming;
USE netflix_gaming;

CREATE TABLE usuarios (
    id INT UNSIGNED NOT  NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    correo VARCHAR (50)
);

CREATE TABLE juegos (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50),
fecha_lanzamiento DATE,
precio DECIMAL(5,2),
stock int
);

CREATE TABLE ventas (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT
    
);

CREATE TABLE auditoria_cambios_juegos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50),
    juego_id INT,
    fecha_cambio TIMESTAMP DEFAULT CURRENT_TIMESTAMP   
);
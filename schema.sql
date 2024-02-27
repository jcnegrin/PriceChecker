DROP DATABASE IF EXISTS PricePicker;

CREATE DATABASE IF NOT EXISTS PricePicker;

USE PricePicker;

DROP TABLE IF EXISTS Precio;

DROP TABLE IF EXISTS Producto;

DROP TABLE IF EXISTS Categoria;

DROP TABLE IF EXISTS Tienda;

CREATE TABLE
    IF NOT EXISTS Tienda (
        id VARCHAR(255),
        nombre VARCHAR(50),
        url VARCHAR(255),
        PRIMARY KEY (id)
    );

CREATE TABLE
    IF NOT EXISTS Categoria (
        id VARCHAR(255),
        nombre VARCHAR(255),
        codigoCategoria VARCHAR(255),
        PRIMARY KEY (id),
        CONSTRAINT fk_categoria_categoria FOREIGN KEY (codigoCategoria) REFERENCES Categoria (id)
    );

CREATE TABLE
    IF NOT EXISTS Producto (
        id VARCHAR(255),
        nombre VARCHAR(255),
        descripcion VARCHAR(255),
        codigoTienda VARCHAR(255),
        codigoCategoria VARCHAR(255),
        PRIMARY KEY (id),
        CONSTRAINT fk_producto_tienda FOREIGN KEY (codigoTienda) REFERENCES Tienda (id),
        CONSTRAINT fk_producto_categoria FOREIGN KEY (codigoCategoria) REFERENCES Categoria (id)
    );

CREATE TABLE
    IF NOT EXISTS Precio (
        id VARCHAR(255),
        monto FLOAT NOT NULL,
        medida SMALLINT,
        unidad VARCHAR(20),
        codigoProducto VARCHAR(255),
        CONSTRAINT fk_precio_producto FOREIGN KEY (codigoProducto) REFERENCES Producto (id)
    );

DESC Categoria;

DESC Precio;

DESC Producto;

DESC Tienda;
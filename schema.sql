CREATE TABLE
    IF NOT EXISTS Tienda (
        id VARCHAR(255),
        nombre VARCHAR(50),
        url VARCHAR(255),
        PRIMARY KEY (id)
    )
CREATE TABLE
    IF NOT EXISTS Categoria (
        id VARCHAR(255),
        nombre VARCHAR(255),
        codigoCategoria VARCHAR(255),
        PRIMARY KEY (id),
        FOREIGN KEY (codigoCategoria) REFERENCES Categoria (id)
    )
CREATE TABLE
    IF NOT EXISTS Producto (
        id VARCHAR(255),
        nombre VARCHAR(255),
        descripcion VARCHAR(255),
        codigoTienda VARCHAR(255),
        codigoCategoria VARCHAR(255),
        PRIMARY KEY (id),
        FOREIGN KEY (codigoTienda) REFERENCES Tienda (id),
        FOREIGN KEY (codigoCategoria) REFERENCES Categoria (codigoCategoria)
    )
CREATE TABLE
    IF NOT EXISTS Precio (
        id VARCHAR(255),
        monto FLOAT NOT NULL,
        medida SMALLINT,
        unidad VARCHAR(20),
        codigoProducto VARCHAR(255),
        FOREIGN KEY (codigoProducto) REFERENCES Producto (id)
    )
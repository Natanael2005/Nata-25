-- Tabla de Clientes
CREATE TABLE Clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombres VARCHAR(35),
    apellidos VARCHAR(35),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100)
);


-- Tabla de Productos
CREATE TABLE Productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio NUMERIC(10, 2),
    stock INTEGER
);


-- Tabla de Ventas
CREATE TABLE Ventas (
    id_venta SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    id_cliente INTEGER REFERENCES Clientes(id_cliente),
    total_venta NUMERIC(10, 2)
);


-- Tabla de Detalle de Venta
CREATE TABLE Detalle_Venta (
    id_detalle SERIAL PRIMARY KEY,
    id_venta INTEGER REFERENCES Ventas(id_venta),
    id_producto INTEGER REFERENCES Productos(id_producto),
    cantidad INTEGER,
    precio_unitario NUMERIC(10, 2),
    subtotal NUMERIC(10, 2)
);


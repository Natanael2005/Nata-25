--MODIFICADORES DE TABLA---------------------------------------

--Agregar una columna:
ALTER TABLE Clientes
ADD fecha_registro DATE;

--Eliminar una columna:
ALTER TABLE Clientes
DROP COLUMN telefono;

--Modificar el tipo de dato de una columna:
ALTER TABLE Clientes
ALTER COLUMN telefono TYPE VARCHAR(15);


--Inserción de registros(Insertar un nuevo cliente):
INSERT INTO Clientes (nombres, apellidos, telefono, correo_electronico)
VALUES ('Pedro', 'Ramírez', '555-6789', 'pedro@example.com');

--Modificación de registros(Modificar el teléfono de un cliente):
UPDATE Clientes
SET telefono = '555-4321'
WHERE id_cliente = 1;

--Eliminación de registros(Eliminar un cliente):
DELETE FROM Clientes
WHERE id_cliente = 2;

--Actualización de registros(-- Aumentar el precio de todos los productos en un 10%):
UPDATE Productos
SET precio = precio * 1.1;

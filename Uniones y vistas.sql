use Northwind

SELECT p.ProductName producto, 
c.CategoryName categoria
FROM Products p 
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID



--Ejercicio

CREATE VIEW  listadoProductos AS
SELECT p.ProductName Productos,
c.CategoryID Categorias,
s.ContactName Proveedor
FROM Products p
INNER JOIN Categories c
ON p.CategoryID = c.CategoryID
INNER JOIN Suppliers s
ON p.SupplierID = s.SupplierID
--consultar vistas
SELECT 
* FROM listadoProductos
--MODIFICAR LA VISTA ANTERIOR
AlTER VIEW listadoProductos AS
SELECT p.ProductName Producto,
c.CategoryName Categoria,
s.ProductID ID
FROM Products p
RIGHT JOIN Categories c
ON p.CategoryID = c.CategoryID
LEFT JOIN Suppliers o
ON p.SupplierID = o.SupplierID
RIGHT JOIN [Order Details] s
ON p.ProductID = s.ProductID

SELECT *
FROM listadoProductos

--Modificar con FUllJoin 
AlTER VIEW listadoProductos AS
SELECT p.ProductName Producto,
c.CategoryName Categoria,
s.ProductID ID
FROM Products p
FULL JOIN Categories c
ON p.CategoryID = c.CategoryID
FULL JOIN Suppliers o
ON p.SupplierID = o.SupplierID
FULL JOIN [Order Details] s
ON p.ProductID = s.ProductID

SELECT * 
FROM listadoProductos

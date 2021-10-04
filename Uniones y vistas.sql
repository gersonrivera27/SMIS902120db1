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

SELECT 
* FROM listadoProductos



USE Northwind

go

--Ejercicio1--Practica
SELECT ProductName, ProductID, UnitPrice
FROM Products prod1
WHERE UnitPrice IN

(
SELECT MAX(prod2.UnitPrice)
FROM Products prod2
WHERE prod2.CategoryID= prod1.CategoryID


);


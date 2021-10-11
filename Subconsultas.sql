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


--Subconsulta como expresion de columna

SELECT OrderID, OrderDate,
(
SELECT
MAX(UnitPrice)
FROM [Order Details] OD
WHERE OD.OrderID= o.OrderId

) PecioMaximo
FROM Orders o


--subconsulta para incesersion y actualizacion

CREATE TABLE customerPrueba(id int identity(1,1), name varchar(30));
--Insert mediante subconsultas

INSERT INTO customerPrueba(name)
SELECT ContactName FROM customers WHERE CustomerID IN(SELECT CustomerID FROM Orders);

select * from customerPrueba


--TABLAS TEMPORALES
--Creando tabla mediante select
SELECT ContactName
INTO #temporary_Customer --Nombre de tabla temporal local
 FROM customers
  WHERE CustomerID IN(SELECT CustomerID FROM Orders);

  SELECT * FROM #temporary_Customer

  --CREAR TABLEA TEMPORAL CON CREATE
  CREATE TABLE #temporyTable(name varchar(25));
  
  
  INSERT INTO #temporyTable(name)
  
  SELECT ContactName
  FROM Customers
  WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders)
  
  SELECT * 
  FROM #temporyTable


  --TABLA TEMPORAL GLOBAL
  CREATE TABLE ##temporaryGlobal(name varchar(25));
  INSERT INTO ##temporaryGlobal(name)
  
  SELECT ContactName
  FROM Customers
  WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders)

  select * from ##temporaryGlobal
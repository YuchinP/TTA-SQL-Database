USE TTA

--Select name of all products in store
SELECT Name
FROM Products
--Add Price
SELECT Name, Price
FROM Products;
--Names of products with price less or equal to 200
SELECT Name, Price
FROM Products
WHERE Price <= 200;
--Between 60 and 120
SELECT Name, Price
FROM Products
WHERE Price Between 60 AND 120
--OR--
SELECT Name, Price
FROM Products
WHERE Price > 60
AND Price < 120;
--Name and Price in Cents
SELECT Name, Price*100
FROM Products
-- Average price
SELECT AVG(Price)
FROM Products;
--Average price of all products with manufacurer code =2 
SELECT AVG(Price)
FROM Products
WHERE ManufacturerCode = 2
--Number of products price >= 180
SELECT Count(*)
FROM Products
WHERE Price >= 180
--Name and price of all products with price <= 180 sort by price des then name asc
SELECT Name, Price
FROM Products
WHERE Price >= 180
ORDER BY Price DES, Name ASC
--All products name price man name
SELECT p.Name, p.Price, m.Manufacturer
FROM Products AS P
INNER JOIN Manufacturer AS M
ON p.ManCode = m.ManCode
--OR WITHOUT INNER JOIN--
SELECT *
FROM Products, Manufacturer
WHERE Products.ManCode = Manufacturer.ManCode
--Select avg price of each product showing only mancode
SELECT AVG(Price), Manufacturer.ManCode
FROM Products, Manufacturer
WHERE Products.Mancode = Manufacturer.ManCode
GROUP BY Manufacturers.Name
--Names of Manufacturer whos products have avg price >= 150
SELECT AVG(Price), Manufacturer.Name
FROM Products, Manufacturer
WHERE Products.ManCode = Manufacturer.ManCode
GROUP BY Manufacturer.Name
HAVING AVG(Price) >=150
--Name and price of cheapest Product
SELECT Price, Name
FROM Products
GRoup By Name
WHERE Price = (SELECT MIN(Price) FROM Products);
--OR
SELECT Name, Price
FROM Products
ORDER by Price ASC
Limit 1
--OR
SELECT Price, Name
FROM Products
WHERE Price NOT IN
	(SELECT Price.Smaller
		FROM Products as Smaller
		JOIN Products as Larger
		ON Smaller.Products < Larger.Products)

--Name of each manufacturere along with name and price of most expensive product
SELECT Price, Manufacturer.Name, Product
FROM Products, Manufacturer
WHERE Products.Mancode = Manufacturer.ManCode
AND Price = (SELECT max(Price) FROM Products WHERE Products.Mancode = Manufacturer.ManCode)
GROUP BY Manufacturer.Name
--ADd new Product
INSERT INTO Products (Code, Name, Price, ManCode)
Values (1,Loudspeakers, $70, 2)
--Update Name of Product 8
Update Products
SET Name = 'Laser Printer'
WHERE Code = 8
--APPly 10% discount to everything
Update Products
Set Price = Price * 0.9
-- Apply 10% discount to everything larger or equal to 120
Update Products
Set Price = Price *.9
WHERE Price >= 120
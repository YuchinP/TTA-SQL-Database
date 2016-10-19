--PARAMETERS--
USE AdventureWorks2012
GO

CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SELECT *
FROM Person.Address
WHERE City = @City
GO

--EXEC--
EXEC dbo.uspGetAddress @City = 'New York'



--Likeness--
CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SELECT *
FROM Person.Address
WHERE City Like @City + '%'
GO

uspGetAddress @City = 'Chicago'


CREATE PROCEDURE dbo.uspGetAddressNull @City nvarchar(30) = NULL
AS
SELECT *
FROM Person.Address
WHERE City = @City
GO

uspgetaddressnull


CREATE PROCEDURE dbo.uspGetAddressisnull @City nvarchar(30) = NULL
AS
SELECT *
FROM Person.Address
WHERE City = ISNULL(@City,City)
GO

uspGetAddressIsNull


--Multiple Parameters ADD A COMMA AND ADDITIONAL PARAMETERS--
CREATE PROCEDURE dbo.uspGetAddressMul @City nvarchar(30) = NULL, @AddressLine1 nvarchar(60) = NULL
AS
SELECT *
FROM Person.Address
WHERE City = ISNULL(@City,City)
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1 ,AddressLine1) + '%'
GO

--Output parameters--
CREATE PROCEDURE dbo.uspGetAddressCount1 
	@city varchar(30), 
	@AddressCount int OUTPUT
AS
SELECT @AddressCount = count(*)
FROM AdventureWorks2012.Person.Address
WHERE City = @City;


--calling the procedure--
DECLARE @AddressCount int
EXEC dbo.uspGetAddressCount1 @City = 'Calgary', @AddressCount = @AddressCount OUTPUT
SELECT @AddressCount;




--DECLARE is how you declare variables--



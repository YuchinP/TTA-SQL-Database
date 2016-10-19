USE AdventureWorks2012

CREATE PROCEDURE dbo.uspGetAddress
AS
SELECT * FROM Person.Address
GO

--EXEC--
EXEC dbo.uspGetAddress
---or
EXEC uspGETaddress
--or just simply
uspGetAddress



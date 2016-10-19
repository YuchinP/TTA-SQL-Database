use adventureworks2012

select awPE.BusinessEntityID, awpe.EmailAddressID, awPE.EmailAddress, awPP.PhoneNumber
from Person.Emailaddress AS awPE inner join Person.Personphone AS awPP
on awPE.businessentityID = awPP.businessentityID
WHERE EmailAddressID <= 5000
 
select awID.AddressID, awID.BusinessEntityID, awAD.AddressLine1, awAD.AddressLine2, awAD.City, awAD.StateProvinceID, awAD.PostalCode
from Person.BusinessEntityAddress AS awID inner join Person.Address AS awAD
on awID.AddressID = awAD.AddressID
WHERE PostalCode NOT LIKE '[A-Z]%'

select awPE.BusinessEntityID, awpe.EmailAddressID, awPE.EmailAddress, awPP.PhoneNumber,awID.AddressID, awID.BusinessEntityID, awAD.AddressLine1, awAD.AddressLine2, awAD.City, awAD.StateProvinceID, awAD.PostalCode
FROM Person.Emailaddress AS awPE
	INNER JOIN Person.Personphone AS awPP
		on awPE.businessentityID = awPP.businessentityID
	INNER JOIN Person.BusinessEntityAddress AS awID
		on awID.BusinessEntityID = awPP.businessentityID
	INNER JOIN Person.Address AS awAD
		on awID.AddressID = awAD.AddressID
WHERE awAD.AddressLine2 NOT LIKE 'NULL'
AND awPP.PhoneNumber NOT LIKE '%(11)%'















CREATE PROCEDURE ContactInfo  
	@BusID int, 
	@EmID int, 
	@EmAD varchar(50),
	@Phone varchar(10),
	@AddID varchar(30),
	@BusID2 int,
	@AddL1 varchar(30),
	@AddL2 varchar(10),
	@City Varchar(20),
	@State varchar (20),
	@Postal int
	 
AS 
CREATE TABLE Contacts
	(@BusID int, 
	EmID int, 
	EmAD varchar(50),
	Phone varchar(10),
	AddID varchar(30),
	BusID2 int,
	AddL1 varchar(30),
	AddL2 varchar(10),
	City Varchar(20),
	State varchar (20),
	Postal int
awPE.BusinessEntityID, awpe.EmailAddressID, awPE.EmailAddress, awPP.PhoneNumber, awID.AddressID, awID.BusinessEntityID, awAD.AddressLine1, awAD.AddressLine2, awAD.City, awAD.StateProvinceID, awAD.PostalCode



--Person address, person email, person phone/type

select * from Person.businessEntityAddress
select * from person.address
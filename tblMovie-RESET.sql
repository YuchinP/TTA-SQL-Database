USE master
GO

IF exists(Select * FROM Sys.SysDatabases WHERE [name] = 'DbMovie'
DROP database DbMovie
GO

CREATE database DbMovie
GO

USE DbMovie
GO

CREATE TABLE tblMovie
(
m_id int primary key,
m_title varchar(30) NOT NULL,
m_runtime int NULL,
m_RATING varchar(10)
)

INSERT INTO tblMovie
VALUES (1, 'AList Explorers',96,'PG-13')

INSERT INTO tblMovie
VALUES (3, 'Chumps to Champs',75,'PG-13')

INSERT INTO tblMovie
VALUES (2, 'Bonker Bonzo', 75, 'G')

INSERT INTO tblMovie
Values (4,'Dare or Die', 110,'R'),
	(5, 'EeeeGhads',88,'G') 

USE DbMovie

SELECT * FROM tblMovie

DELETE tblMovie --delete removes the records but not the table--
WHERE m_runtime > 90

--DROPs--

DROP TABLE tblMovie
 --Drop removes the tables and records--

 --ADDING--

 ALTER TABLE tblMovie
 ADD m_Description Varchar(100) NULL

 SELECT * FROM tblMovie

 INSERT INTO tblMovie
 VALUES (6,'Fire Shaft', 75, 'R', 'hot movie')

 DELETE tblMovie 
 WHERE m_id =6

 ALTER TABLE tblMovie
 DROP Column m_Description

 ALTER TABLE tblMovie
 ADD m_description Varchar(100) NOT NULL
 DEFAULT 'Description Coming Soon';

 INSERT INTO tblMovie
 VALUES (6, 'Fire Shaft', 75, 'R', Default)

--Change column name--
SELECT * FROM tblMovie
sp_rename 'tblMovie.m_Description', 'm_teaser'

--Change table name to movie-
sp_rename 'tblMovie', 'Movie'

SELECT * FROM Movie
USE DbMovie

Delete AddMovie

CREATE PROCEDURE AddMovie 
	@ID int, 
	@MovieTitle Varchar(30), 
	@Runtime int, 
	@rating varchar(5)
AS
INSERT INTO Movie (m_id, m_title, m_runtime, m_rating)
VALUES (@ID, @MovieTitle, @Runtime, @rating);

EXECUTE AddMovie 6,Alien, 100, R;

SELECT * FROM Movie

--DOESN'T WORK--
CREATE PROCEDURE RatingNum
	@Rate nvarchar(10), 
	@Movie varchar(30) OUTPUT
AS
SELECT @Rate = Count(*)
FROM Movie
Where m_rating = @Rate;

Declare @Rate nvarchar(10), @movie varchar(30)
EXECUTE RatingNum @Rate = 'R', @Movie = @Movie 
SELECT @Rate;
--DOESN't WORK--

Create procedure GetMovieRating 
	@Title varchar(30),
	@rating varchar(10) OUTPUT
AS
BEGIN
	SET @rating = (SELECT m_rating FROM Movie WHERE m_title = @title);
END;

Declare @rating varchar(10);
EXEC GetMovieRating 'Bonker Bonzo', @rating OUTPUT;
PRINT @rating

CREATE PROCEDURE MovieName
	@MovieID int,
	@Titl varchar(30) OUTPUT
AS
BEGIN
	SET @Titl = (SELECT m_title FROM Movie WHERE m_id=@MovieID);
END;

Declare @Titl varchar(30)
EXECUTE MovieName '2', @Titl OUTPUT;
Print @Titl

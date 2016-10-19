
---------------------------------------------------------TABLES ---------------------------------------------------------
Create Table BOOK
	(BookID int NOT NULL, Title varchar(60) Null, PublisherName varchar(50) NOT NULL)
GO
Create Table Book_Authors
	(BookID int NOT NULL, AuthorName varchar(30) Null)
GO
Create Table Publisher
	(PublisherName varchar(50) NOT NULL, Address varchar(50), Phone varchar(10))
GO
Create Table Book_Copies
	(BookID int NOT NULL, BranchID int NOT NULL, No_Of_Copies Int Null)
GO
Create Table Book_Loans
	(BookID int NOT NULL, BranchID int NOT NULL, CardNO int NOT NULL, DateOut date NULL, DueDate date NULL)
GO
Create Table Library_Branch
	(BranchID int NOT NULL, BranchName varchar(30) NULL, Address varchar(50) NULL)
GO
Create Table Borrower
	(CardNO int NOT NULL, Name varchar(20) NULL, Address varchar(50) NULL, Phone varchar(10) NULL)
GO
--------------------------------------------------------------- ADD BOOK
Create Procedure AddBook
	@BookID int,
	@Title varchar(60),
	@PublisherName varchar(50)
AS
INSERT INTO Book (BookID, Title, PublisherName)
VALUES (@BookID, @Title, @PublisherName)
GO
--------------------------------------------------------------- ADD AUTHOR
Create Procedure AddAuthor
	@BookID int,
	@AuthorName varchar(30)
AS
INSERT INTO Book_authors (BookID, AuthorName)
VALUES (@BookID, @AuthorName)
GO
--------------------------------------------------------------- ADD PUBLISHER
Create Procedure AddPublisher
	@PublisherName varchar(50),
	@PubAddress varchar(50),
	@Phone varchar(10)
AS
INSERT INTO Publisher (PublisherName, Address, Phone)
VALUES (@PublisherName, @PubAddress, @Phone)
GO
--------------------------------------------------------------- ADD BOOK COPIES
Create Procedure AddCopies
	@BookID int,
	@BranchID int,
	@No_Of_Copies int
AS
INSERT INTO Book_Copies (BookID,BranchID,No_Of_Copies)
VALUES (@BookID, @BranchID, @No_Of_Copies)
GO
--------------------------------------------------------------- ADD BOOK LOANS
Create Procedure AddLoans
	@BookID int,
	@BranchID int,
	@CardNO int,
	@DateOut date,
	@DueDate date
AS
INSERT INTO Book_Loans (BookID, BranchID, CardNO, DateOut, DueDate)
VALUES (@BookID, @BranchID, @CardNO, @DateOut, @DueDate)
GO
--------------------------------------------------------------- ADD LIBRARY BRANCH
Create Procedure AddBranch
	@BranchID int,
	@BranchName varchar(30),
	@Address varchar(50)
AS
INSERT INTO Library_Branch (BranchID, BranchName, Address)
VALUES (@BranchID, @BranchName, @Address)
GO
--------------------------------------------------------------- ADD BORROWER
Create Procedure AddBorrow
	@CardNO int,
	@Name varchar(20),
	@Address varchar(50),
	@Phone varchar(10)
AS
INSERT INTO Borrower (CardNO, Name, Address, Phone)
VALUES (@CardNO, @Name, @Address, @Phone)
GO
------1------ BRANCHES
EXECUTE AddBranch 100, 'CopedBanana', '321 BocaBacana'
EXECUTE AddBranch 101, 'Sharpstown', '7302 EdGy aLLeY'
EXECUTE AddBranch 102, 'Central', '555 Central St.'
EXECUTE AddBranch 103, 'US Government', '32 White House'
EXECUTE AddBranch 104, 'IndieScene', NULL
EXECUTE AddBranch 105, 'JayZ', 'Paris'
GO
------2------
EXECUTE AddPublisher 'Britain', '444 English St.', '452-8643'
EXECUTE AddPublisher 'FG Inc', 'Melancholy Hill', NULL
EXECUTE AddPublisher 'Kathy', 'Mills Avenue', NULL
EXECUTE AddPublisher 'LP', '6 Minutes Dr', '233-5731'
EXECUTE AddPublisher 'US Publications', 'Freedom Ave', NULL
EXECUTE AddPublisher 'Northwest', '312 North Rd.', NULL
EXECUTE AddPublisher 'Lola', '123 Copacabana', '999-9999'
GO
------3------
EXECUTE AddBook 1,'The Lost Tribe', 'Lola'
EXECUTE AddAuthor 1, 'Stephen King'
EXECUTE AddCopies 1, 100, 3
EXECUTE AddCopies 1, 101, 3
EXECUTE AddCopies 1, 102, 3
EXECUTE AddCopies 1, 103, 3
GO
EXECUTE AddBook 2, 'Till I Collapse - Workout Guide', 'LP'
EXECUTE AddAuthor 2, 'Marshall Mathers'
EXECUTE AddCopies 2, 105, 30
EXECUTE AddCopies 2, 104, 12
EXECUTE AddCopies 2, 103, 3
EXECUTE AddCopies 2, 102, 32
GO
EXECUTE AddBook 3, 'This Year - In Review', 'Kathy'
EXECUTE AddAuthor 3, 'The Mountain Goats'
EXECUTE AddCopies 3, 104, 12
EXECUTE AddCopies 3, 103, 14
EXECUTE AddCopies 3, 102, 15
EXECUTE AddCopies 3, 101, 24
GO
EXECUTE AddBook 4, 'Clint Eastwood - Bio', 'FG Inc'
EXECUTE AddAuthor 4, 'The Gorillaz'
EXECUTE AddCopies 4, 100, 4
EXECUTE AddCopies 4, 101, 2
EXECUTE AddCopies 4, 102, 4
EXECUTE AddCopies 4, 103, 2
EXECUTE AddCopies 4, 104, 7
EXECUTE AddCopies 4, 105, 10
GO
EXECUTE AddBook 5, 'Knee Socks - Fashion', 'Britain'
EXECUTE AddAuthor 5, 'The Artic Monkeys'
EXECUTE AddCopies 5, 103, 7
EXECUTE AddCopies 5, 105, 7
EXECUTE AddCopies 5, 100, 7
GO
EXECUTE AddBook 6, 'Cabinet Battle #1', 'US Publications'
EXECUTE AddAuthor 6, 'Alexander Hamilton'
EXECUTE AddCopies 6, 100, 6
EXECUTE AddCopies 6, 102, 3
EXECUTE AddCopies 6, 103, 9
EXECUTE AddCopies 6, 104, 12
GO
EXECUTE AddBook 7, 'Ltl Black Submarines', 'LP'
EXECUTE AddAuthor 7, 'The Black Keys'
EXECUTE AddCopies 7, 101, 13
GO
EXECUTE AddBook 8, 'No Children - Parenting', 'Kathy'
EXECUTE AddAuthor 8, 'The Mountain Goats'
EXECUTE AddCopies 8, 104, 11
EXECUTE AddCopies 8, 105, 12
GO
EXECUTE AddBook 9, 'Stronger - Workout', 'Northwest'
EXECUTE AddAuthor 9, 'Kanye West'
EXECUTE AddCopies 9, 102, 3
EXECUTE AddCopies 9, 100, 30
EXECUTE AddCopies 9, 101, 30
EXECUTE AddCopies 9, 103, 3
GO
EXECUTE AddBook 10, 'POWER - Politics', 'Northwest'
EXECUTE AddAuthor 10, 'Kanye West'
EXECUTE AddCopies 10, 100, 30
GO
EXECUTE AddBook 11, 'Intro - Writing Guide', 'Kathy'
EXECUTE AddAuthor 11, 'The XX'
EXECUTE AddCopies 11, 100, 2 
EXECUTE AddCopies 11, 101, 3 
EXECUTE AddCopies 11, 102, 4 
EXECUTE AddCopies 11, 103, 5 
EXECUTE AddCopies 11, 104, 6
EXECUTE AddCopies 11, 105, 7  
GO
EXECUTE AddBook 12, 'Feel Good Inc - Motivation', 'FG Inc'
EXECUTE AddAuthor 12, 'The Gorillaz'
EXECUTE AddCopies 12, 100, 5
EXECUTE AddCopies 12, 101, 7
EXECUTE AddCopies 12, 102, 9
EXECUTE AddCopies 12, 103, 11
EXECUTE AddCopies 12, 104, 9
EXECUTE AddCopies 12, 105, 7
GO
EXECUTE AddBook 13, 'Do I Wanna Know? - Religious', 'LP'
EXECUTE AddAuthor 13, 'The Artic Monkeys'
EXECUTE AddCopies 13, 101, 31
GO
EXECUTE AddBook 14, 'Gold Digger - History of 49', 'Northwest'
EXECUTE AddAuthor 14, 'Kanye West'
EXECUTE AddCopies 14, 102, 12
EXECUTE AddCopies 14, 104, 12
EXECUTE AddCopies 14, 105, 12
EXECUTE AddCopies 14, 100, 12
Go
EXECUTE AddBook 15, 'Dog Problems - Pet Help', 'US Publications'
EXECUTE AddAuthor 15, 'The Format'
EXECUTE AddCopies 15, 101, 4
EXECUTE AddCopies 15, 100, 7
EXECUTE AddCopies 15, 104, 9
EXECUTE AddCopies 15, 105, 2
GO
EXECUTE AddBook 16, 'Monster - Fiction', 'Britain'
EXECUTE AddAuthor 16, 'Marshall Mathers'
EXECUTE AddCopies 16, 102, 23
EXECUTE AddCopies 16, 103, 30
EXECUTE AddCopies 16, 104, 3
GO
EXECUTE AddBook 17, 'Pompeii - Travel Guide', 'Britain'
EXECUTE AddAuthor 17, 'Bastille'
EXECUTE AddCopies 17, 100, 2
EXECUTE AddCopies 17, 101, 9
EXECUTE AddCopies 17, 102, 29
EXECUTE AddCopies 17, 103, 2
EXECUTE AddCopies 17, 104, 9
EXECUTE AddCopies 17, 105, 9
Go
EXECUTE AddBook 18, 'Chop Suey - Cooking Guide', 'LP'
EXECUTE AddAuthor 18, 'System of a Down'
EXECUTE AddCopies 18, 105, 4
EXECUTE AddCopies 18, 104, 7
EXECUTE AddCopies 18, 103, 4
EXECUTE AddCopies 18, 102, 3
EXECUTE AddCopies 18, 101, 2
GO
EXECUTE AddBook 19, 'Cabinet Battle #2', 'US Publications'
EXECUTE AddAuthor 19, 'Alexander Hamilton'
EXECUTE AddCopies 19, 100, 2
EXECUTE AddCopies 19, 101, 4
EXECUTE AddCopies 19, 102, 8
EXECUTE AddCopies 19, 103, 16
EXECUTE AddCopies 19, 104, 32
EXECUTE AddCopies 19, 105, 16
GO
EXECUTE AddBook 20, 'S.O.B. - Self-Help', 'FG Inc'
EXECUTE AddAuthor 20, 'Nathaniel Rateliff'
EXECUTE AddCopies 20, 105, 12
EXECUTE AddCopies 20, 101, 15
EXECUTE AddCopies 20, 104, 7
GO
------Loans------ id name add phone
EXECUTE AddBorrow 1, 'Steve', Null, Null
EXECUTE AddBorrow 2, 'John', Null, Null
EXECUTE AddBorrow 3, 'Ryan', Null, Null
EXECUTE AddBorrow 4, 'Sally', Null, Null
EXECUTE AddBorrow 5, 'Joanna', Null, Null
EXECUTE AddBorrow 6, 'Jefferson', Null, Null
EXECUTE AddBorrow 7, 'Hwong', Null, Null
EXECUTE AddBorrow 8, 'Ryu', Null, Null
EXECUTE AddBorrow 9, 'Ken', Null, Null
EXECUTE AddBorrow 10, 'Guile', Null, Null
EXECUTE AddBorrow 11, 'Birdie', Null, Null
EXECUTE AddBorrow 12, 'Rashid', Null, Null
EXECUTE AddBorrow 13, 'Mauricio', Null, Null
EXECUTE AddBorrow 14, 'Mira', Null, Null
EXECUTE AddBorrow 15, 'Jessica', Null, Null
EXECUTE AddBorrow 16, 'Grace', Null, Null
EXECUTE AddBorrow 17, 'Rey', Null, Null
EXECUTE AddBorrow 18, 'Sarah', Null, Null
EXECUTE AddBorrow 19, 'Brittney', Null, Null
EXECUTE AddBorrow 20, 'Justin', Null, Null
EXECUTE AddBorrow 21, 'Tyler', Null, Null
EXECUTE AddBorrow 22, 'Peter', Null, Null
EXECUTE AddBorrow 23, 'Jackson', Null, Null
EXECUTE AddBorrow 24, 'Mia', Null, Null
EXECUTE AddBorrow 25, 'Triss', Null, Null
EXECUTE AddBorrow 26, 'Seth', Null, Null
EXECUTE AddBorrow 27, 'Jenny', Null, Null
EXECUTE AddBorrow 28, 'Baek', Null, Null
EXECUTE AddBorrow 29, 'Oliver', Null, Null
EXECUTE AddBorrow 30, 'Amy', Null, Null
EXECUTE AddBorrow 31, 'Jimmy', Null, Null
GO
------Borrowers------
EXECUTE AddLoans 1, 100, 1, Null, Null
EXECUTE AddLoans 1, 100, 2, Null, Null
EXECUTE AddLoans 1, 102, 3, Null, Null
EXECUTE AddLoans 1, 105, 4, Null, Null
EXECUTE AddLoans 1, 104, 5, Null, Null
EXECUTE AddLoans 1, 104, 6, Null, Null
EXECUTE AddLoans 1, 102, 7, Null, Null
EXECUTE AddLoans 1, 101, 8, Null, Null
EXECUTE AddLoans 1, 103, 9, Null, Null
EXECUTE AddLoans 1, 105, 10, Null, Null
EXECUTE AddLoans 1, 103, 11, Null, Null
EXECUTE AddLoans 1, 102, 12, Null, Null
EXECUTE AddLoans 1, 105, 13, Null, Null
EXECUTE AddLoans 1, 103, 14, Null, Null
EXECUTE AddLoans 1, 102, 15, Null, Null
EXECUTE AddLoans 2, 101, 16, Null, Null
EXECUTE AddLoans 2, 100, 2, Null, Null
EXECUTE AddLoans 2, 105, 4, Null, Null
EXECUTE AddLoans 2, 104, 6, Null, Null
EXECUTE AddLoans 2, 102, 7, Null, Null
EXECUTE AddLoans 3, 102, 3, Null, Null
EXECUTE AddLoans 3, 104, 6, Null, Null
EXECUTE AddLoans 3, 104, 17, Null, Null
EXECUTE AddLoans 3, 104, 1, Null, Null
EXECUTE AddLoans 3, 100, 2, Null, Null
EXECUTE AddLoans 3, 105, 18, Null, Null
EXECUTE AddLoans 3, 103, 5, Null, Null
EXECUTE AddLoans 4, 105, 9, Null, Null
EXECUTE AddLoans 4, 103, 20, Null, Null
EXECUTE AddLoans 4, 105, 19, Null, Null
EXECUTE AddLoans 4, 102, 3, Null, Null
EXECUTE AddLoans 4, 103, 11, Null, Null
EXECUTE AddLoans 4, 104, 5, Null, Null
EXECUTE AddLoans 4, 104, 21, Null, Null
EXECUTE AddLoans 4, 100, 2, Null, Null
EXECUTE AddLoans 4, 100, 22, Null, Null
EXECUTE AddLoans 5, 102, 3, Null, Null
EXECUTE AddLoans 6, 101, 23, Null, Null
EXECUTE AddLoans 7, 101, 23, Null, Null
EXECUTE AddLoans 8, 101, 23, Null, Null
EXECUTE AddLoans 8, 101, 24, Null, Null
EXECUTE AddLoans 8, 103, 9, Null, Null
EXECUTE AddLoans 8, 104, 5, Null, Null
EXECUTE AddLoans 8, 102, 7, Null, Null
EXECUTE AddLoans 8, 102, 3, Null, Null
EXECUTE AddLoans 8, 103, 4, Null, Null
EXECUTE AddLoans 8, 102, 3, Null, Null
EXECUTE AddLoans 9, 104, 25, Null, Null
EXECUTE AddLoans 10, 105, 26, Null, Null
EXECUTE AddLoans 11, 103, 27, Null, Null
EXECUTE AddLoans 12, 101, 28, Null, Null
EXECUTE AddLoans 13, 100, 2, Null, Null
EXECUTE AddLoans 14, 101, 29, Null, Null
EXECUTE AddLoans 14, 104, 30, Null, Null
EXECUTE AddLoans 17, 105, 31, Null, Null
GO
--------------------------------PROCEDURE-----------------------------------

SELECT B.BookID, B.Title, bc.BranchID, bc.No_Of_Copies, lb.BranchName
INTO #BookToBranch
FROM BOOK AS b
	INNER JOIN Book_copies AS bc
		on b.BookID = bc.BookID
	INNER JOIN Library_Branch AS lb
		on bc.BranchID = Lb.BranchID
WHERE Title LIKE 'The Lost Tribe'
GO
CREATE PROCEDURE LostTribeOwner
	@BranchName varchar(30),
	@LostTribe int OUTPUT
AS
	SELECT @LostTribe = count(*)
	FROM #BookToBranch
	WHERE BranchName = @BranchName
GO
DECLARE @LostTribe int
EXEC LostTribeOwner @BranchName = 'Sharpstown', @LostTribe = @LostTribe OUTPUT
SELECT @LostTribe






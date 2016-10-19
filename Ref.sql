Create Table Book
	(BookID int NOT NULL, Title varchar(20) Null, PublisherName varchar(50) NOT NULL)

Create Table Book_Authors
	(BookID int NOT NULL, AuthorName varchar(30) Null)

Create Table Publisher
	(PublisherName varchar(50) NOT NULL, Address varchar(50), Phone varchar(10))

Create Table Book_Copies
	(BookID int NOT NULL, BranchID int NOT NULL, No_Of_Copies Int Null)

Create Table Book_Loans
	(BookID int NOT NULL, BranchID int NOT NULL, CardNO int NOT NULL, DateOut date NULL, DueDate date NULL)

Create Table Library_Branch
	(BranchID int NOT NULL, BranchName varchar(30) NULL, Address varchar(50) NULL)

Create Table Borrower
	(CardNO int NOT NULL, Name varchar(20) NULL, Address varchar(50) NULL, Phone varchar(10) NULL)

SELECT * FROM Book_Author
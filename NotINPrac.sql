CREATE TABLE Computers
	(
	ModelNum int NOT NULL,
	Laptop varchar(10),
	)
DROP TABLE APPs

CREATE TABLE APPs
	(
	ModelNum int,
	Numbers int
	)

SELECT * FROM Computers
ORDER BY ModelNum 

SELECT * FROM APPS

INSERT INTO Computers (ModelNum, Laptop) 
VALUES (3, 'ASUS')

INSERT INTO APPS (ModelNUM, Numbers)
VALUES (5, 20)


SELECT C.ModelNUM, C.Laptop, A.Numbers
INTO #Apple
FROM Computers as c
	INNER JOIN APPS as a
		ON (C.ModelNum = A.ModelNUM)
ORDER BY C.ModelNum 

SELECT Smaller.Numbers
FROM #Apple as Larger
JOIN #Apple as Smaller
ON Smaller.Numbers < Larger.Numbers


--Gives us Max number without the MAX command--
SELECT Numbers
FROM #Apple
WHERE Numbers NOT IN(
	SELECT Smaller.Numbers
	FROM #Apple AS Smaller
	JOIN #Apple AS Larger
		ON Smaller.Numbers < Larger.Numbers
)
--Playing with the NOT IN condition--
SELECT ModelNum, Laptop, Numbers
FROM #APPLE
WHERE (Laptop = 'ASUS') 
AND (Numbers NOT IN (SELECT Numbers from #Apple where Numbers = 300))



USE JProCo
 
SELECT * 
FROM Employee AS E INNER JOIN PayRates AS PR
ON e.EmpID = PR.EmpID
WHERE ManagerID = 11
AND YearlySalary IS NOT NULL;

--give increases to salary--

UPDATE PR SET YearlySalary = YearlySalary + 10000
FROM Employee AS E INNER JOIN PayRates AS PR
ON e.EmpID = PR.EmpID
WHERE ManagerID = 11
AND YearlySalary IS NOT NULL;
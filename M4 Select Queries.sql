Use SimpleOrder;
SELECT CustomerId, FirstName, LastName FROM Customer
	WHERE FirstName = 'Ryan';

Use SimpleOrder;
SELECT CustomerId, FirstName, LastName, Birthdate FROM Customer
	WHERE LastName LIKE '%Lear%';

-- AGE > 25 years. Not 100% accurate due to datediff.
Use SimpleOrder;
SELECT FirstName, Birthdate FROM Customer
	WHERE DATEDIFF(DAY, Birthdate, GETDATE())/365.25 > 25;

-- AGE > 25 & < 45. Not 100% accurate due to datediff.
Use SimpleOrder;
SELECT * FROM Customer
	WHERE DATEDIFF(DAY, Birthdate, GETDATE())/365.25 > 25 AND DATEDIFF(DAY, Birthdate, GETDATE())/365.25 < 45;
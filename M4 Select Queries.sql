Use SimpleOrder;

SELECT CustomerId, FirstName, LastName FROM Customer
	WHERE FirstName = 'Ryan';

SELECT CustomerId, FirstName, LastName, Birthdate FROM Customer
	WHERE LastName LIKE '%Lear%';

-- AGE > 25 years. Not 100% accurate due to datediff.
SELECT FirstName, Birthdate FROM Customer
	WHERE DATEDIFF(DAY, Birthdate, GETDATE())/365.25 > 25;

-- AGE > 25 & < 45. Not 100% accurate due to datediff.
SELECT * FROM Customer
	WHERE DATEDIFF(DAY, Birthdate, GETDATE())/365.25 > 25 AND DATEDIFF(DAY, Birthdate, GETDATE())/365.25 < 45;
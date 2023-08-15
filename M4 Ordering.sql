Use SimpleOrder;
SELECT * FROM [Order]
	ORDER BY TotalPrice DESC;

Use SimpleOrder;
SELECT * from Product
	ORDER BY ProductName ASC;

Use SimpleOrder;
SELECT * from [Order]
	WHERE TotalPrice > 10
	ORDER BY ItemCount ASC;
Use SimpleOrder;

SELECT * FROM [Order]
	WHERE TotalPrice BETWEEN 10 and 100;

-- Find orders for products named 'Sunscreen', 'Beach Towel' or 'Hi-Chew'.
SELECT * FROM [Order]
	WHERE OrderId IN (
		SELECT OrderId FROM OrderItem
		WHERE ProductId IN (
			SELECT ProductId FROM Product
			WHERE ProductName = 'Sunscreen' OR ProductName = 'Beach Towel' OR ProductName = 'Hi-Chew'
			)
		);
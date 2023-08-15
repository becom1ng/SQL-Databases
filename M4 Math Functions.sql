Use SimpleOrder;
SELECT OrderId, CustomerId, OrderDate, ItemCount, OrderStatus, TotalPrice,
	ROUND(TotalPrice, 1) AS TotalPriceROUNDED
	FROM [Order]
	WHERE TotalPrice > 100;

Use SimpleOrder;
SELECT OrderId, CustomerId, OrderDate, ItemCount, OrderStatus, TotalPrice,
	CONVERT(decimal(10,2),ROUND(TotalPrice/ItemCount, 2)) AS AvgItemCost
	FROM [Order];
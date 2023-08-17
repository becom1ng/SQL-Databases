USE SimpleOrder;

-- Write a query to display the most recent order per product.

-- #1) Correct result but MISSING OrderID
SELECT MAX(o.OrderDate) as max_OrderDate, i.ProductId FROM [Order] o
JOIN OrderItem i ON i.OrderId = o.OrderId
GROUP BY i.ProductId
ORDER BY i.ProductId;

-- #2) Gives all data, but shows duplicate ProductId due to different OrderId
SELECT MAX(o.OrderDate) as max_OrderDate, i.ProductId, i.OrderId FROM [Order] o
JOIN OrderItem i ON o.OrderId = i.OrderId
GROUP BY i.ProductId, i.OrderId
ORDER BY i.ProductId;

-- #3) Only gives output with OrderDate equal to max_OrderDate from all orders
SELECT
	o.OrderDate as max_OrderDate,
	o.OrderId,
    i.ProductId
FROM [Order] o
JOIN OrderItem i ON o.OrderId = i.OrderId
	WHERE o.OrderDate = (
		SELECT MAX(OrderDate)
		FROM [Order]
		WHERE ProductId = i.ProductID 
		);

-- #4) Combo of #1 and #2. Generates joined table as #2 with all data (duplicate ProductId), then join that to table as #1 without OrderId
SELECT
	t1.ProductId,
	t1.OrderId,
	t1.OrderDate
FROM (
	SELECT i.ProductId, o.OrderId, o.OrderDate FROM [Order] o
	JOIN OrderItem i ON o.OrderId = i.OrderId
	) as t1
JOIN (
	SELECT i.OrderId, MAX(o.OrderDate) as max_OrderDate FROM [Order] o
	JOIN OrderItem i ON o.OrderId = i.OrderId
	GROUP BY i.OrderId
	) as t2 ON t1.OrderId = t2.OrderId
			AND t1.OrderDate = t2.max_OrderDate
GROUP BY t1.ProductId, t1.OrderId, t1.OrderDate
ORDER BY t1.ProductId
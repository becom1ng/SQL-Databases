USE SimpleOrder;

-- Write a query to display the most recent order per product.
Select MAX(o.max_OrderDate), p.ProductName from Product p
JOIN (
	SELECT MAX(o.OrderDate) as max_OrderDate, i.ProductId FROM [Order] o
	JOIN OrderItem i ON i.OrderId = o.OrderId
	GROUP BY i.ProductId
	) o ON o.ProductId = p.ProductId
GROUP BY p.ProductName
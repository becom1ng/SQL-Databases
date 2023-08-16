USE SimpleOrder;

SELECT i.OrderItemId, c.FirstName, c.LastName, p.ProductId, p.ProductName, p.Price
FROM OrderItem i
JOIN [Order] o ON o.OrderId = i.OrderId
JOIN Customer c ON c.CustomerId = o.CustomerId
JOIN Product p ON p.ProductId = i.ProductId
WHERE o.CustomerId = 3;
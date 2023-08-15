USE SimpleOrder;

UPDATE [Order]
  SET OrderStatus = 'delivered'
  WHERE OrderId = 1;
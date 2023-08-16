USE SimpleOrder;

UPDATE [Order]
  SET OrderDate = GETDATE()
  WHERE OrderId = 2;
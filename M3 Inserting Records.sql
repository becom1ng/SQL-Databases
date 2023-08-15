Use SimpleOrder;

insert into Customer 
( FirstName, LastName, Birthdate )
values
( 'Jack', 'Learjet', '2000-07-27'),
( 'Rin', 'Jones', '1993-03-02'),
( 'Grace', 'Williams', '1979-11-07'),
( 'Bob', 'O''Leary', '1970-11-10');

insert into Product
( ProductName, Price )
values
( 'Sunscreen', 8.99 ),
( 'Beach Towel', 19.99 ),
( 'Kayak', 149.99 ),
( 'Hi-Chew', 0.99 );

insert into [Order]
( CustomerId, TotalPrice, ItemCount )
values
( 1, 19.99, 1),
( 2, 9.98, 2),
( 3, 149.99, 1),
( 4, 8.99, 1);

insert into OrderItem
( OrderId, ProductId, Price, Quantity)
values
( 1, 2, 19.99, 1),
( 2, 4, 0.99, 1),
( 2, 1, 8.99, 1),
( 3, 3, 149.99, 1),
( 4, 1, 8.99, 1);
Use SimpleOrder;

drop table if exists OrderItem, [Order], Product, Customer;

create table Customer (
	CustomerId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName varchar(40) NOT NULL,
	LastName varchar(80) NOT NULL,
	Birthdate date
);

create table [Order]  (
    OrderId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CustomerId int NOT NULL FOREIGN KEY REFERENCES Customer(CustomerId),
    OrderDate datetimeoffset DEFAULT GETDATE(),
    TotalPrice decimal(8,2) NOT NULL,
    ItemCount int NOT NULL,
    OrderStatus varchar(20) DEFAULT ('placed'),
    AffiliateId int
);

create table Product (
	ProductId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ProductName varchar(200) NOT NULL,
	Price decimal(6,2) NOT NULL
);

create table OrderItem (
	OrderItemId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	OrderId int NOT NULL FOREIGN KEY REFERENCES [Order](OrderId),
	ProductId int NOT NULL FOREIGN KEY REFERENCES Product(ProductId),
	Price decimal(6,2) NOT NULL,
	Quantity int NOT NULL
);
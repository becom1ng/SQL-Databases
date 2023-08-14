Use SimpleOrder

create table Customer (
	CustomerId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName varchar(40) NOT NULL,
	LastName varchar(80) NOT NULL,
	Birthdate date,
	Email varchar(80) NOT NULL,
)

create table [Order]  (
    OrderId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    CustomerId int FOREIGN KEY REFERENCES Customer(CustomerId),
    OrderDate datetimeoffset DEFAULT GETDATE(),
    TotalPrice decimal NOT NULL,
    ItemCount int NOT NULL,
    OrderStatus varchar(20) DEFAULT ('placed'),
    AffiliateId int
);

create table Product (
	ProductId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ProductName varchar(100) NOT NULL,
	Price decimal NOT NULL
)

create table OrderItem (
	OrderId int NOT NULL FOREIGN KEY REFERENCES [Order](OrderId),
	ProductId int NOT NULL FOREIGN KEY REFERENCES Product(ProductId),
	Price decimal NOT NULL,
	Quantity int NOT NULL
)
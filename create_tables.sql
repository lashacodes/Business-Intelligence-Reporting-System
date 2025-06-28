CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY,
    FullName NVARCHAR(100),
    Email NVARCHAR(100),
    DateOfBirth DATE,
    CreatedAt DATETIME DEFAULT GETDATE()
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY,
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    Amount DECIMAL(10,2),
    SaleDate DATE
);

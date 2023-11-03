CREATE DATABASE safra_company;

USE safra_company;

CREATE Table Customers (
CustomerID INT PRIMARY KEY, Name VARCHAR(50), 
Email VARCHAR(50), Phone INT, City VARCHAR(50));

INSERT INTO Customers(CustomerID, Name, Email, Phone, City)
Values
(1, "Jhon", "jhon@gmail.com", 123-456-7890, "NewYork"),
(2, "Jane", "jane@gmail.com", 123-456-7891, "Los angles"),
(3, "Richle", "richle@gmail.com", 123-456-7892, "Chicago"),
(4, "Sara", "sara@gmail.com", 123-456-7893, "Huston"),
(5, "Jasmine", "jasmine", 123-456-7894, "San Francisco");

CREATE Table Orders (
OrderID INT PRIMARY KEY, CustomerID INT, 
Order_Date INT, TotalAmount INT, FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID));

INSERT INTO Orders(OrderID, CustomerID, Order_Date, TotalAmount)
Values
(101, 1, 2023-01-15, 500.00),
(102, 2, 2023-02-28, 700.00),
(103, 1, 2023-05-05, 900.00),
(104, 5, 2023-03-25, 200.00),
(105, 3, 2023-08-20, 600.00),
(106, 4, 2023-06-19, 400.00);

CREATE Table Products (
ProductID INT PRIMARY KEY, ProductName VARCHAR(50), 
UnitPrice INT);

INSERT INTO Products(ProductID, ProductName, UnitPrice)
Values
(501, "Laptop", 500.00),
(502, "SmartPhone", 700.00),
(503, "Tablet", 900.00),
(504, "Headphone", 200.00),
(505, "Monitor", 600.00),
(506, "Keyboard", 400.00);

CREATE Table OrderDetails (
OrderDetailID INT PRIMARY KEY, OrderID INT, 
ProductID INT, Quantity INT, 
FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails(OrderDetailID, OrderID, ProductID, Quantity)
Values
(1001, 101, 501, 1),
(1002, 103, 502, 2),
(1003, 102, 503, 2),
(1004, 106, 504, 1),
(1005, 104, 505, 4),
(1006, 105, 506, 3);

SELECT * FROM OrderDetails;




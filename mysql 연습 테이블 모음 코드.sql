-- Customers table:

DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers
(CustomerID INT NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL);

INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES (1, 'Sara', 'Davis');

INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES (2, 'Rumi', 'Shah');

INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES (3, 'Paul', 'Johnson');

INSERT INTO Customers (CustomerID, FirstName, LastName)
VALUES (4, 'Samuel', 'Martinez');

-- Sales table:

DROP TABLE IF EXISTS Sales;

CREATE TABLE Sales
(SalesID INT NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL,
QuantityPurchased INT NULL,
PricePerItem FLOAT NULL);

INSERT INTO Sales (SalesID, FirstName, LastName, QuantityPurchased, PricePerItem)
VALUES (1, 'Andrew', 'Li', 4, 2.5);

INSERT INTO Sales (SalesID, FirstName, LastName, QuantityPurchased, PricePerItem)
VALUES (2, 'Carol', 'White', 10, 1.25);

INSERT INTO Sales (SalesID, FirstName, LastName, QuantityPurchased, PricePerItem)
VALUES (3, 'James', 'Carpenter', 5, 4);

-- Products table:

DROP TABLE IF EXISTS Products;

CREATE TABLE Products
(ProductID INT NOT NULL,
Description VARCHAR(30) NULL,
Weight INT NULL);

INSERT INTO Products (ProductID, Description)
VALUES (1, 'Printer A');

INSERT INTO Products (ProductID, Description, Weight)
VALUES (2, 'Printer B', 0);

INSERT INTO Products (ProductID, Description, Weight)
VALUES (3, 'Monitor C', 2);

INSERT INTO Products (ProductID, Description, Weight)
VALUES (3, 'Laptop D', 4);

-- Salespeople table:

DROP TABLE IF EXISTS Salespeople;

CREATE TABLE Salespeople
(SalespersonID INT NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL);

INSERT INTO Salespeople (SalespersonID, FirstName, LastName)
VALUES (1, 'Gregory', 'Brown');

INSERT INTO Salespeople (SalespersonID, FirstName, LastName)
VALUES (2, 'Carla', 'Brown');

INSERT INTO Salespeople (SalespersonID, FirstName, LastName)
VALUES (3, 'Natalie', 'Lopez');

INSERT INTO Salespeople (SalespersonID, FirstName, LastName)
VALUES (4, 'Connie', 'King');

-- TableForSort table:

DROP TABLE IF EXISTS TableForSort;

CREATE TABLE TableForSort
(TableID INT NOT NULL,
CharacterData VARCHAR(30) NULL,
NumericData INT NULL);

INSERT INTO TableForSort (TableID, CharacterData, NumericData)
VALUES (1, '23', 23);

INSERT INTO TableForSort (TableID, CharacterData, NumericData)
VALUES (2, '5', 5);

INSERT INTO TableForSort (TableID, CharacterData)
VALUES (3, 'Dog');

INSERT INTO TableForSort (TableID, NumericData)
VALUES (4, -6);

-- Books table:

DROP TABLE IF EXISTS Books;

CREATE TABLE Books
(BookID INT NOT NULL,
Title VARCHAR(30) NULL,
Author VARCHAR (30) NULL,
CurrentMonthSales INT NULL);

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (1, 'Pride and Prejudice', 'Austen', 15);

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (2, 'Animal Farm', 'Orwell', 7);

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (3, 'Merchant of Venice', 'Shakespeare', 5);

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (4, 'Romeo and Juliet', 'Shakespeare', 8);

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (5, 'Oliver Twist', 'DIckens', 3);

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (6, 'Candide', 'Voltaire', 9);

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (7, 'The Scarlet Letter', 'Hawthorne', 12);

INSERT INTO Books (BookID, Title, Author, CurrentMonthSales) VALUES (8, 'Hamlet', 'Shakespeare', 2);

-- Movies table:

DROP TABLE IF EXISTS Movies;

CREATE TABLE Movies
(MovieID INT NOT NULL,
MovieTitle VARCHAR(30) NULL,
Rating VARCHAR(10) NULL);

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (1, 'Love Actually', 'R');

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (2, 'North by Northwest', 'Not Rated');

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (3, 'Love and Death', 'PG');

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (4, 'The Truman Show', 'PG');

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (5, 'Everyone Says I Love You', 'R');

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (6, 'Down with Love', 'PG-13');

INSERT INTO Movies (MovieID, MovieTitle, Rating) VALUES (7, 'Finding Nemo', 'G');

-- Actors table:

DROP TABLE IF EXISTS Actors;

CREATE TABLE Actors
(ActorID INT NOT NULL,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL);

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (1, 'Cary', 'Grant');

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (2, 'Mary', 'Steenburgen');

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (3, 'Jon', 'Voight');

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (4, 'Dustin', 'Hoffman');

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (5, 'John', 'Wayne');

INSERT INTO Actors (ActorID, FirstName, LastName) VALUES (6, 'Gary', 'Cooper');

-- Purchases table:

DROP TABLE IF EXISTS Purchases;

CREATE TABLE Purchases
(PurchaseID INT NOT NULL,
CustomerName VARCHAR(30) NULL,
State VARCHAR (5) NULL,
QuantityPurchased INT NULL,
PricePerItem FLOAT NULL);

INSERT INTO Purchases (PurchaseID, CustomerName, State, QuantityPurchased, PricePerItem) VALUES (1, 'Andrew Li', 'IL', 4, 2.5);

INSERT INTO Purchases (PurchaseID, CustomerName, State, QuantityPurchased, PricePerItem) VALUES (1, 'Carol White', 'CA', 10, 1.25);

INSERT INTO Purchases (PurchaseID, CustomerName, State, QuantityPurchased, PricePerItem) VALUES (1, 'James Carpenter', 'NY', 5, 4);

-- Groceries table:

DROP TABLE IF EXISTS Groceries;

CREATE TABLE Groceries
(GroceryID INT NOT NULL,
CategoryCode VARCHAR(5) NULL,
Description VARCHAR (30) NULL);

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (1, 'F', 'Apple');

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (2, 'F', 'Orange');

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (3, 'S', 'Mustard');

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (4, 'V', 'Carrot');

INSERT INTO Groceries (GroceryID, CategoryCode, Description) VALUES (5, 'B', 'Water');

-- GroceryCategories table:

DROP TABLE IF EXISTS GroceryCategories;

CREATE TABLE GroceryCategories
(GroceryID INT NOT NULL,
Fruit VARCHAR(5) NULL,
Vegetable VARCHAR (5) NULL,
Spice VARCHAR (5) NULL,
Beverage VARCHAR (5) NULL,
Description VARCHAR (30) NULL);

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (1, 'X', ' ', ' ', ' ', 'Apple');

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (2, 'X', ' ', ' ', ' ', 'Orange');

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (3, ' ', ' ', 'X', ' ', 'Mustard');

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (4, ' ', 'X', ' ', ' ', 'Carrot');

INSERT INTO GroceryCategories (GroceryID, Fruit, Vegetable, Spice, Beverage, Description) VALUES (5, ' ', ' ', ' ', 'X', 'Water');

-- NorthAmerica table:

DROP TABLE IF EXISTS NorthAmerica;

CREATE TABLE NorthAmerica
(CityID INT NOT NULL,
Country VARCHAR(5) NULL,
State VARCHAR (5) NULL,
Province VARCHAR (5) NULL,
City VARCHAR (30) NULL);

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (1, 'US', 'VT', ' ', 'Burlington');

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (2, 'CA', ' ', 'QU', 'Montreal');

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (3, 'US', 'CO', ' ', 'Denver');

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (4, 'US', 'CO', ' ', 'Boulder');

INSERT INTO NorthAmerica (CityID, Country, State, Province, City) VALUES (5, 'CA', ' ', 'AB', 'Edmonton');

-- CustomerList table:

DROP TABLE IF EXISTS CustomerList;

CREATE TABLE CustomerList
(CustomerID INT NOT NULL,
Sex VARCHAR(5) NULL,
Age INT NULL,
Income INT NULL);

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (1, 'M', 55, 80000);

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (2, 'F', 25, 65000);

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (3, 'M', 35, 40000);

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (4, 'F', 42, 90000);

INSERT INTO CustomerList (CustomerID, Sex, Age, Income) VALUES (5, 'F', 27, 25000);

-- SongTitles table:

DROP TABLE IF EXISTS SongTitles;

CREATE TABLE SongTitles
(SongID INT NOT NULL,
Artist VARCHAR(30) NULL,
Album VARCHAR(30) NULL,
Title VARCHAR(30) NULL);

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (1, 'The Beatles', 'Revolver', 'Yellow Submarine');

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (2, 'The Beatles', 'Revolver', 'Eleanor Rigby');

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (3, 'The Beatles', 'Abbey Road', 'Here Comes the Sun');

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (4, 'The Rolling Stones', 'Beggars Banquet', 'Sympathy for the Devil');

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (5, 'The Rolling Stones', 'Let It Bleed', 'Gimme Shelter');

INSERT INTO SongTitles (SongID, Artist, Album, Title) VALUES (6, 'Paul McCartney', 'Ram', 'Too Many People');

-- Fees table:

DROP TABLE IF EXISTS Fees;

CREATE TABLE Fees
(FeeID INT NOT NULL,
Student VARCHAR(30) NULL,
FeeType VARCHAR(30) NULL,
Fee INT NULL);

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (1, 'Jose', 'Gym', 30);

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (2, 'Jose', 'Lunch', 10);

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (3, 'Jose', 'Trip', 8);

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (4, 'Rama', 'Gym', 30);

INSERT INTO Fees (FeeID, Student, FeeType, Fee) VALUES (5, 'Julie', 'Lunch', 10);

-- Grades table:

DROP TABLE IF EXISTS Grades;

CREATE TABLE Grades
(GradeID INT NOT NULL,
Student VARCHAR(30) NULL,
GradeType VARCHAR(30) NULL,
Grade DECIMAL NULL,
YearInSchool INT NULL);

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (1, 'Isabella', 'Quiz', 92, 7);

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (2, 'Isabella', 'Quiz', 95, 7);

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (3, 'Isabella', 'Homework', 84, 7);

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (4, 'Hailey', 'Quiz', 62, 8);

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (5, 'Hailey', 'Quiz', 81, 8);

INSERT INTO Grades (GradeID, Student, GradeType, YearInSchool) VALUES (6, 'Hailey', 'Homework', 8);

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (7, 'Peter', 'Quiz', 58, 7);

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (8, 'Peter', 'Quiz', 74, 7);

INSERT INTO Grades (GradeID, Student, GradeType, Grade, YearInSchool) VALUES (9, 'Peter', 'Homework', 88, 7);

-- Inventory table:

DROP TABLE IF EXISTS Inventory;

CREATE TABLE Inventory
(InventoryID INT NOT NULL,
Category VARCHAR(30) NULL,
Subcategory VARCHAR(30) NULL,
Product VARCHAR(30) NULL,
Quantity INT NULL);

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (1, 'Furniture', 'Chair', 'Red Armchair', 3);

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (2, 'Furniture', 'Chair', 'Green Armchair', 2);

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (3, 'Furniture', 'Desk', 'Blue Computer Desk', 4);

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (4, 'Paper', 'Copy', 'White Copy Paper', 5);

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (5, 'Paper', 'Copy', 'Pink Copy Paper', 2);

INSERT INTO Inventory (InventoryID, Category, Subcategory, Product, Quantity) VALUES (6, 'Paper', 'Notebook', 'White Notebook Paper', 4);

-- Orders table:

DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders
(OrderID INT NOT NULL,
CustomerID INT NOT NULL,
OrderDate DATE NULL,
OrderAmount FLOAT NULL);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES (1, 1, '2016-09-01', 10);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES (2, 2, '2016-09-02', 12.5);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES (3, 2, '2016-09-03', 18);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderAmount) VALUES (4, 3, '2016-09-15', 20);

-- Refunds table:

DROP TABLE IF EXISTS Refunds;

CREATE TABLE Refunds
(RefundID INT NOT NULL,
OrderID INT NULL,
RefundDate DATE NULL,
RefundAmount FLOAT NULL);

INSERT INTO Refunds (RefundID, OrderID, RefundDate, RefundAmount) VALUES (1, 1, '2016-09-02', 5);

INSERT INTO Refunds (RefundID, OrderID, RefundDate, RefundAmount) VALUES (2, 3, '2016-09-18', 18);

-- SizeInventory table:

DROP TABLE IF EXISTS SizeInventory;

CREATE TABLE SizeInventory
(SizeID INT NOT NULL,
Size VARCHAR(10) NULL);

INSERT INTO SizeInventory (SizeID, Size) VALUES (1, 'Small');

INSERT INTO SizeInventory (SizeID, Size) VALUES (2, 'Medium');

INSERT INTO SizeInventory (SizeID, Size) VALUES (3, 'Large');

-- ColorInventory table:

DROP TABLE IF EXISTS ColorInventory;

CREATE TABLE ColorInventory
(ColorID INT NOT NULL,
Color VARCHAR(10) NULL);

INSERT INTO ColorInventory (ColorID, Color) VALUES (1, 'Red');

INSERT INTO ColorInventory (ColorID, Color) VALUES (2, 'Blue');

INSERT INTO ColorInventory (ColorID, Color) VALUES (3, 'Green');

INSERT INTO ColorInventory (ColorID, Color) VALUES (4, 'Yellow');

-- SpecialDates table:

DROP TABLE IF EXISTS SpecialDates;

CREATE TABLE SpecialDates
(LastProcessDate DATE NULL,
CurrentFiscalYear INT NULL,
CurrentFiscalQuarter VARCHAR(10) NULL);

INSERT INTO SpecialDates (LastProcessDate, CurrentFiscalYear, CurrentFiscalQuarter) VALUES ('2016-09-15', 2016, 'Q3');

-- Personnel table:

DROP TABLE IF EXISTS Personnel;

CREATE TABLE Personnel
(EmployeeID INT NOT NULL,
EmployeeName VARCHAR(30) NULL,
ManagerID INT NULL);

INSERT INTO Personnel (EmployeeID, EmployeeName) VALUES (1, 'Susan Carter');

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (2, 'Li Wang', 1);

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (3, 'Robert Baker', 1);

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (4, 'Scott Fielding', 1);

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (5, 'Carla Bender', 2);

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (6, 'Janet Brown', 2);

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (7, 'Jules Moreau', 3);

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (8, 'Amy Adamson', 4);

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (9, 'Jaideep Singh', 4);

INSERT INTO Personnel (EmployeeID, EmployeeName, ManagerID) VALUES (10, 'Amelia Williams', 5);

-- Users table:

DROP TABLE IF EXISTS Users;

CREATE TABLE Users
(UserID INT NOT NULL,
UserName VARCHAR (30) NULL);

INSERT INTO Users (UserID, UserName)
VALUES (1, 'Cecilia Rodriguez');

INSERT INTO Users (UserID, UserName)
VALUES (2, 'Elaine Bundy');

INSERT INTO Users (UserID, UserName)
VALUES (3, 'Rakesh Gupta');

INSERT INTO Users (UserID, UserName)
VALUES (4, 'April Waters');

-- Transactions table:

DROP TABLE IF EXISTS Transactions;

CREATE TABLE Transactions
(TransactionID INT NOT NULL,
UserID INT NULL,
TransactionAmount FLOAT NULL,
TransactionType VARCHAR (10) NULL);

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (1, 1, 22.25, 'Cash');

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (2, 2, 11.75, 'Credit');

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (3, 2, 5, 'Credit');

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (4, 2, 8, 'Cash');

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (5, 3, 9.33, 'Credit');

INSERT INTO Transactions (TransactionID, UserID, TransactionAmount, TransactionType)
VALUES (6, 3, 10.11, 'Credit');

-- Returns table:

DROP TABLE IF EXISTS Returns;

CREATE TABLE Returns
(ReturnID INT NOT NULL,
CustomerID INT NOT NULL,
ReturnDate DATE NULL,
ReturnAmount FLOAT NULL);

INSERT INTO Returns (ReturnID, CustomerID, ReturnDate, ReturnAmount) VALUES (1, 1, '2016-09-10', 2);

INSERT INTO Returns (ReturnID, CustomerID, ReturnDate, ReturnAmount) VALUES (2, 2, '2016-09-15', 15);

INSERT INTO Returns (ReturnID, CustomerID, ReturnDate, ReturnAmount) VALUES (3, 3, '2016-09-28', 3);

-- Clients table:

DROP TABLE IF EXISTS Clients;

CREATE TABLE Clients
(ClientID INT NOT NULL AUTO_INCREMENT,
FirstName VARCHAR(30) NULL,
LastName VARCHAR(30) NULL,
State VARCHAR(10) NULL,
PRIMARY KEY (ClientID));

INSERT INTO Clients (FirstName, LastName, State) VALUES ('Joyce', 'Bentley', 'TN');

INSERT INTO Clients (FirstName, LastName, State) VALUES ('Miguel', 'Ramirez', 'PA');

INSERT INTO Clients (FirstName, LastName, State) VALUES ('Ellen', 'Baker', 'OR');

-- NewClients table:

DROP TABLE IF EXISTS NewClients;

CREATE TABLE NewClients
(State VARCHAR(10) NULL,
Name1 VARCHAR(30) NULL,
Name2 VARCHAR(30) NULL);

INSERT INTO NewClients (State, Name1, Name2) VALUES ('RI', 'Roberto', 'Harris');

INSERT INTO NewClients (State, Name1, Name2) VALUES ('PA', 'Beata', 'Kowalski');

INSERT INTO NewClients (State, Name1, Name2) VALUES ('RI', 'Galina', 'Melnyk');

-- Vendors table:

DROP TABLE IF EXISTS Vendors;

CREATE TABLE Vendors
(VendorID INT NOT NULL,
State VARCHAR(10) NULL,
Zip VARCHAR(10) NULL);

INSERT INTO Vendors (VendorID, State, Zip) VALUES (1, 'NY', '10605');

INSERT INTO Vendors (VendorID, State, Zip) VALUES (2, 'FL', '33431');

INSERT INTO Vendors (VendorID, State, Zip) VALUES (3, 'CA', '94704');

INSERT INTO Vendors (VendorID, State, Zip) VALUES (4, 'CO', '80302');

INSERT INTO Vendors (VendorID, State, Zip) VALUES (5, 'WY', '83001');

-- VendorTransactions table:

DROP TABLE IF EXISTS VendorTransactions;

CREATE TABLE VendorTransactions
(TransactionID INT NOT NULL,
VendorID INT NULL,
State VARCHAR(10) NULL,
Zip VARCHAR(10) NULL);

INSERT INTO VendorTransactions (TransactionID, VendorID, State, Zip) VALUES (1, 1, 'NJ', '07030');

INSERT INTO VendorTransactions (TransactionID, VendorID, State, Zip) VALUES (2, 2, 'FL', '33139');

INSERT INTO VendorTransactions (TransactionID, VendorID, State, Zip) VALUES (3, 5, 'OR', '97401');

-- RelatedTable table:

DROP TABLE IF EXISTS RelatedTable;

CREATE TABLE RelatedTable
(FirstColumn INT NOT NULL PRIMARY KEY);
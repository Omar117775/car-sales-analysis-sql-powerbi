use carcompanydb2 ;

CREATE TABLE Employees
(
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName NVARCHAR(100) NOT NULL,
    Position NVARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2),
    BranchID INT NOT NULL,
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);
GO

CREATE TABLE Customers
(
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL,
    Phone NVARCHAR(20),
    Email NVARCHAR(100),
    City NVARCHAR(50),
    RegistrationDate DATE
);
GO
CREATE TABLE CarCategories
(
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(50) NOT NULL
);
GO
CREATE TABLE Cars
(
    CarID INT IDENTITY(1,1) PRIMARY KEY,
    CarName NVARCHAR(100) NOT NULL,
    Brand NVARCHAR(50),
    ModelYear INT,
    Price DECIMAL(12,2),
    CategoryID INT NOT NULL,
    FOREIGN KEY (CategoryID) REFERENCES CarCategories(CategoryID)
);
GO
CREATE TABLE Sales
(
    SaleID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    BranchID INT NOT NULL,
    SaleDate DATE,
    TotalAmount DECIMAL(12,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);
GO
CREATE TABLE SaleDetails
(
    SaleDetailID INT IDENTITY(1,1) PRIMARY KEY,
    SaleID INT NOT NULL,
    CarID INT NOT NULL,
    Quantity INT,
    UnitPrice DECIMAL(12,2),
    FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID)
);
GO
CREATE TABLE Services
(
    ServiceID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    CarID INT NOT NULL,
    BranchID INT NOT NULL,
    ServiceDate DATE,
    ServiceType NVARCHAR(100),
    Cost DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);
GO


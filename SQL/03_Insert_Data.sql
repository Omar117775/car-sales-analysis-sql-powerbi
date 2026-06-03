USE CarCompanyDB2;
GO


INSERT INTO Branches (BranchName, City, Address)
VALUES
('Downtown Branch', 'Cairo', '123 Tahrir St'),
('Alex Branch', 'Alexandria', '45 Corniche Rd'),
('Giza Branch', 'Giza', '78 Pyramid St'),
('Maadi Branch', 'Cairo', '9 Maadi St'),
('Nasr City Branch', 'Cairo', '88 Nasr St');
GO



INSERT INTO Employees
(
    EmployeeName,
    Position,
    HireDate,
    Salary,
    BranchID
)
VALUES
('Ahmed Hassan', 'Sales Associate', '2020-01-15', 5000, 1),
('Fatima Ali', 'Sales Manager', '2019-03-20', 8000, 2),
('Mohamed Salah', 'Service Technician', '2021-06-10', 6000, 3),
('Aisha Omar', 'Customer Service', '2020-11-05', 4500, 4),
('Youssef Kamal', 'Sales Associate', '2018-09-12', 5500, 5);
GO



INSERT INTO Customers
(
    CustomerName,
    Phone,
    Email,
    City,
    RegistrationDate
)
VALUES
('Mohamed Adel', '01000000001', 'mohamed@gmail.com', 'Cairo', '2023-01-10'),
('Ali Ahmed', '01000000002', 'ali@gmail.com', 'Alexandria', '2023-02-15'),
('Fatma Nasser', '01000000003', 'fatma@gmail.com', 'Giza', '2023-03-05'),
('Sara Hassan', '01000000004', 'sara@gmail.com', 'Cairo', '2023-04-01'),
('Omar Khaled', '01000000005', 'omar@gmail.com', 'Alexandria', '2023-05-12');
GO


INSERT INTO CarCategories (CategoryName)
VALUES
('Sedan'),
('SUV'),
('Hatchback'),
('Pickup');
GO


INSERT INTO Cars
(
    CarName,
    Brand,
    ModelYear,
    Price,
    CategoryID
)
VALUES
('Toyota Corolla', 'Toyota', 2023, 350000, 1),
('Honda Civic', 'Honda', 2022, 340000, 1),
('Toyota RAV4', 'Toyota', 2023, 500000, 2),
('Ford Ranger', 'Ford', 2021, 450000, 4),
('Hyundai Tucson', 'Hyundai', 2024, 550000, 2);
GO


INSERT INTO Sales
(
    CustomerID,
    EmployeeID,
    BranchID,
    SaleDate,
    TotalAmount
)
VALUES
(1,1,1,'2024-01-15',350000),
(2,2,2,'2024-02-20',340000),
(3,3,3,'2024-03-10',500000),
(4,4,4,'2024-04-18',450000),
(5,5,5,'2024-05-05',550000);
GO



INSERT INTO SaleDetails
(
    SaleID,
    CarID,
    Quantity,
    UnitPrice
)
VALUES
(1,1,1,350000),
(2,2,1,340000),
(3,3,1,500000),
(4,4,1,450000),
(5,5,1,550000);
GO



INSERT INTO Services
(
    CustomerID,
    CarID,
    BranchID,
    ServiceDate,
    ServiceType,
    Cost
)
VALUES
(1,1,1,'2024-06-01','Oil Change',500),
(2,2,2,'2024-06-05','Tire Rotation',700),
(3,3,3,'2024-06-10','Brake Inspection',1200),
(4,4,4,'2024-06-15','Battery Check',400),
(5,5,5,'2024-06-20','Engine Service',2500);
GO    

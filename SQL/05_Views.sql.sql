USE CarCompanyDB2;
GO
--sales analysis

CREATE OR ALTER VIEW vw_SalesAnalysis
AS
SELECT
    S.SaleID,
    S.SaleDate,

    B.BranchID,
    B.BranchName,

    E.EmployeeID,
    E.EmployeeName,

    C.CustomerID,
    C.CustomerName,

    S.TotalAmount

FROM Sales S

INNER JOIN Branches B
    ON S.BranchID = B.BranchID

INNER JOIN Employees E
    ON S.EmployeeID = E.EmployeeID

INNER JOIN Customers C
    ON S.CustomerID = C.CustomerID;
GO

--TEST VIEW 1


SELECT *
FROM vw_SalesAnalysis;
GO

--car sales anaylsis
CREATE OR ALTER VIEW vw_CarSalesAnalysis
AS
SELECT
    SD.SaleDetailID,
    SD.SaleID,

    C.CarID,
    C.CarName,
    C.Brand,
    C.ModelYear,

    SD.Quantity,
    SD.UnitPrice,

    (SD.Quantity * SD.UnitPrice) AS Revenue

FROM SaleDetails SD

INNER JOIN Cars C
    ON SD.CarID = C.CarID;
GO

--TEST VIEW 2

SELECT *
FROM vw_CarSalesAnalysis;
GO

--service anaylsis

CREATE OR ALTER VIEW vw_ServiceAnalysis
AS
SELECT
    S.ServiceID,
    S.ServiceDate,

    B.BranchID,
    B.BranchName,

    C.CustomerID,
    C.CustomerName,

    S.ServiceType,
    S.Cost

FROM Services S

INNER JOIN Branches B
    ON S.BranchID = B.BranchID

INNER JOIN Customers C
    ON S.CustomerID = C.CustomerID;
GO

--TEST VIEW 3

SELECT *
FROM vw_ServiceAnalysis;
GO

-- show all views in the database
SELECT name
FROM sys.views;
GO
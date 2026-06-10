 use carcompanydb2;
 go 


 -- sum of revenues
 select sum(TotalAmount)as TotalRevenue
 from Sales;
 go


 -- sum of branch revenues 

 select B.branchname, count(S.SaleDate)as numsales , sum(s.TotalAmount) as branchrevenue
 from Sales s

 JOIN Branches B ON S.BranchID= B.BranchID

 group by B.branchname

 ORDER BY branchrevenue DESC;
 GO 

 -- sum of revenues for each employee
select e.employeename , count (s.SaleID)as numsales , sum (s.totalamount)as employeerevenue
from Sales s
join Employees e on s.EmployeeID = e.EmployeeID
group by e.EmployeeName
Order by employeerevenue desc;
go


--sum of burchases for each customer
select c.customername , count (s.saleid)as numpurchases , sum (s.totalamount)as totalpurchaes 
from Sales s
join Customers c on s.CustomerID = c.CustomerID
group by c.CustomerName
	order by totalpurchaes desc;
	go


	-- sum of revenues for each car model

	SELECT 
    C.Brand,
    COUNT(SD.SaleID) AS NumSales,
    SUM(S.TotalAmount) AS TotalRevenue
       FROM SaleDetails SD
    JOIN Cars C ON SD.CarID = C.CarID
   JOIN Sales S ON SD.SaleID = S.SaleID
    GROUP BY C.Brand
     ORDER BY TotalRevenue DESC;

-- service anaylsis 

select ServiceType , count (ServiceID) as numservices , sum(Cost) as totalservicecost
from services 

GROUP BY ServiceType
ORDER BY totalservicecost DESC;


--top  customers 

select c.customername , sum (s.totalamount) as totalspent

from sales s

join customers c on s.CustomerID = c.CustomerID

group by c.CustomerName
order by totalspent desc



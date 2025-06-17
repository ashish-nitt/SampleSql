With
EmployeesSalary as
(select Employees.EmpID, Employees.DeptID, Salary
from Employees
join
Compensations
on
Employees.EmpID = Compensations.EmpID),
DeptMaxSalary as
(select DeptID, Max(Salary) as MaxSalary
from Employees
join
Compensations
on Employees.EmpID=Compensations.EmpID
group by DeptID)
select EmployeesSalary.EmpID, EmployeesSalary.Salary, EmployeesSalary.DeptID
from
EmployeesSalary
join
DeptMaxSalary
on EmployeesSalary.DeptID = DeptMaxSalary.DeptID
and EmployeesSalary.Salary = DeptMaxSalary.MaxSalary
order by EmployeesSalary.DeptID;

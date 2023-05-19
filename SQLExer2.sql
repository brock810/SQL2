/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select P.Name as ProductName, C.Name as CategoryName
 from products as P
 Inner join categories as C on C.CategoryID = P.CategoryID
 Where C.Name = 'Computers';

 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select products.Name as "Product name", products.Price, reviews.Rating
from products
inner join reviews ON reviews.ProductID = productsID
Where reviews.Rating = 5;

 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select E.FirstName, E.LastName, SUM(s.quantity) as total
from sales as s 
inner join employees as e on e.EmployeeID = s.EmployeeID
group by e.EmployeeID
order  by total desc
limit 2;

select * from sales 
where EmployeeID = 33809;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as "department name", c.name as "Company Name" from departments as d
inner join categories as c on r.DepartmentID
Where C.name = "applicances" or C.name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.Name, Sum(s.quantity) as 'total sold', Sum.Quantity = s.PricePerUnit as 'total price'
from products as p
inner join sales as s on s.ProductID = p.ProductID
where p.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.Name, MIN (r.Rating)
from product as p
Inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID= 857
group by p.productID;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */
select e.Employee, e.FirstName, e.LastName, p.Name, SUM(s.Quantity) as TotalSold
from sales as s
inner Join employees as e on e.EmployeeID = s.EmployeeID
inner join products as p on p.ProductID = s.ProductID
group by e.EmployeeID, p.ProductID;

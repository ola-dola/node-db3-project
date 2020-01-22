-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select ProductName, CategoryName
from product p
join category c
    on p.categoryId = c.id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

select o.id as order_id, companyname
from "order" o
join shipper s
    on o.shipvia = s.id
where orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

select productname, quantity, o.id
from orderdetail o
join product p
    on o.productid = p.id
where orderid = 10251
order by productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

select o.Id as OrderID, CompanyName, Lastname as "Employee's LastName"
from "order" o
join customer c
    on o.customerid = c.id
join employee e
    on o.employeeID = e.id
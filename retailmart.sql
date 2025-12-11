CREATE DATABASE RetailMartDB;
USE RetailMartDB;

CREATE TABLE Customers(
    CustomerID INT PRIMARY KEY,
    CustName VARCHAR(50) NOT NULL,
    Email VARCHAR(80) UNIQUE,
    City VARCHAR(50),
    JoinDate DATE NOT NULL,
    Status VARCHAR(20) CHECK(Status IN ('Active','Inactive'))
);

CREATE TABLE Stores(
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    ManagerName VARCHAR(50) NOT NULL,
    OpenDate DATE NOT NULL
);

CREATE TABLE Products(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(60) NOT NULL,
    Category VARCHAR(40) NOT NULL,
    UnitPrice DECIMAL(10,2) CHECK(UnitPrice > 0),
    Stock INT CHECK(Stock >= 0)
);

CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    StoreID INT,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(12,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);

CREATE TABLE OrderItems(
    ItemID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT CHECK(Quantity > 0),
    LineTotal DECIMAL(12,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Payments(
    PaymentID INT PRIMARY KEY,
    OrderID INT UNIQUE,
    PaymentMode VARCHAR(20) CHECK(PaymentMode IN ('UPI','Card','Cash')),
    PaymentDate DATE NOT NULL,
    AmountPaid DECIMAL(12,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

#Q1. Insert 10 sample records in all tables while maintaining constraints.
INSERT INTO Customers(CustomerID, CustName, Email, City, JoinDate, Status) 
VALUES(1,'Ashwini Saundore','ashwini@gmail.com','Pune','2023-01-10','Active'),
      (2,'Divya Pund','divya@gmail.com','Mumbai','2023-03-05','Inactive'),
      (3,'Saurabh Mehetre','saurabh@gmail.com','Pune','2023-05-20','Active'),
      (4,'Riya kuchekar','riya@gmail.com','Delhi','2023-07-11','Active'),
      (5,'Kiran Rasal','kiran@gmail.com','Bangalore','2023-09-01','Inactive'),
      (6,'Neha Shetty','neha@gmail.com','Delhi','2024-01-04','Active'),
      (7,'Arti Vishwase','arti@ygmail.com','Chennai','2024-02-10','Active'),
      (8,'Pooja Sant','pooja@gmail.com','Pune','2024-03-15','Active'),
	  (9,'Rutuja Vishwase','rutuja@gmail.com','Mumbai','2024-04-20','Active'),
      (10,'Priya Wamame','priya@gmail.com','Kolkata','2024-05-10','Active');

select *from customers;


INSERT INTO Stores(StoreID, StoreName, City, ManagerName, OpenDate)
VALUES(1,'Pune Central','Pune','Deepak Rasal','2020-01-10'),
      (2,'Delhi Mart','Delhi','Sachin Saundore','2019-03-15'),
      (3,'Mumbai Hub','Mumbai','Anita Raut','2018-07-21'),
      (4,'Bangalore Point','Bangalore','Bhagwan Raut','2021-02-18'),
      (5,'Chennai Store','Chennai','Savita Dale','2022-05-22'),
      (6,'Hyderabad Mega Store','Hyderabad','Rohit Shinde','2021-09-10'),
      (7,'Nagpur SuperMart','Nagpur','Akanksha Joshi','2020-11-05'),
      (8,'Surat ValueMart','Surat','Yogita More','2019-08-18'),
      (9,'Jaipur Retail Hub','Jaipur','Vaishnavi Pund','2022-04-22'),
      (10,'Indore Fresh Store','Indore','Pooja Shirke','2023-02-12');
      
      select *from stores;

INSERT INTO Products(ProductID, ProductName, Category, UnitPrice, Stock) 
VALUES(101,'Laptop','Electronics',55000,20),
      (102,'Mobile','Electronics',18000,50),
      (103,'Rice Pack','Groceries',1200,200),
      (104,'Milk 1L','Groceries',60,500),
	  (105,'TV','Electronics',40000,15),
      (106,'Shampoo','Cosmetics',250,80),
      (107,'Perfume','Cosmetics',750,40),
      (108,'Bread','Groceries',40,300),
      (109,'Washing Machine','Electronics',30000,10),
      (110,'Soap','Cosmetics',30,200);
      
      select *from products;

INSERT INTO Orders(OrderID, CustomerID,StoreID, OrderDate, TotalAmount) 
VALUES(201,1,1,'2024-01-01',2000),
      (202,3,1,'2024-01-05',55000),
      (203,4,2,'2024-02-10',40000),
      (204,7,5,'2024-03-15',1200),
	  (205,8,1,'2024-03-20',18000),
      (206,9,3,'2024-03-25',750),
	  (207,10,2,'2024-04-01',30000),
      (208,1,1,'2024-04-05',250),
      (209,6,4,'2024-04-10',60),
      (210,3,3,'2024-04-14',2500);

select *from orders;

INSERT INTO OrderItems(ItemID, OrderID, ProductID, Quantity, LineTotal) 
VALUES(1,201,103,2,2400),
      (2,202,101,1,55000),
      (3,203,105,1,40000),
      (4,204,103,1,1200),
      (5,205,102,1,18000),
      (6,206,107,1,750),
      (7,207,109,1,30000),
      (8,208,108,5,200),
	  (9,209,104,1,60),
      (10,210,107,2,1500);

select *from orderitems;

INSERT INTO Payments(PaymentID, OrderID, PaymentMode, PaymentDate, AmountPaid)
VALUES(1,201,'UPI','2024-01-02',2000),
      (2,202,'Card','2024-01-06',55000),
      (3,203,'Cash','2024-02-12',40000),
      (4,204,'UPI','2024-03-16',1200),
      (5,205,'Card','2024-03-21',18000),
      (6,206,'Cash','2024-03-26',750),
      (7,207,'UPI','2024-04-02',30000),
      (8,208,'Cash','2024-04-06',250),
      (9,209,'Cash','2024-04-11',60),
      (10,210,'Card','2024-04-15',2500);

select *from payments;
select *from customers;

#Q2. Update the email of any customer.
update customers
set email = "kiran18@gmail.com"
where custname = "kiran rasal";

select *from customers;

#Q3. Delete customers whose status is Inactive.
delete from customers where status = 'Inactive';

select *from customers;

#Q4. Add a new column LoyaltyPoints INT with default 0 in Customers.
alter table customers
add LoyaltyPoints INT default 0;

select *from customers;

#Q5. Increase UnitPrice of Electronics products by 10 percent.
update products 
set unitprice = unitprice *1.10 
where category = 'electronics';

select *from products;

#Q6. Display all unique product categories.
select distinct category from products;

#Q7. Retrieve customers who joined between two given dates.
SELECT * FROM Customers
WHERE joindate BETWEEN '2023-01-01' AND '2023-12-31';

#Q8. List orders with TotalAmount between 1000 and 3000.
SELECT * FROM orders
WHERE totalamount BETWEEN '1000' AND '3000';

#Q9. Show top 5 most expensive products using ORDER BY and LIMIT.
SELECT * FROM Products
ORDER BY UnitPrice DESC
LIMIT 5;

#Q10. Count number of customers in each city.
SELECT  city,count(*) 
FROM customers
GROUP BY city;

#Q11. Display cities having more than 3 stores.
SELECT city,count(*)
FROM customers
GROUP BY city
HAVING count(*) > 3;

#Q12. Retrieve orders sorted by OrderDate descending.
SELECT *from orders
ORDER BY orderdate desc;

#Q13. Display all products whose ProductID is IN (101,105,106).
SELECT *from products
WHERE ProductID IN (101,105,106);

#Q14. Retrieve stores NOT IN ('Pune','Delhi').
SELECT *from stores
WHERE city NOT IN ('Pune','Delhi')

#Q15. Display upper-case version of customer names.
SELECT UPPER(custname) from customers;

#Q16. Show difference between today's date and JoinDate.
SELECT datediff(now(),joindate) from customers;

#Q17. Show min, max, avg UnitPrice for each category.
SELECT category,min(unitprice),max(unitprice),avg(unitprice)
FROM products
GROUP BY category;


#Q18. Compute total revenue generated by each store.
SELECT s.storeid,SUM(o.totalamount)
from stores s
INNER JOIN orders o
on s.storeid = o.storeid
GROUP BY s.storeid;


#Q19. Display first 3 characters of product names.
SELECT SUBSTRING(productname,1,3) from products;

#Q20. Round off TotalAmount for all orders.
SELECT ROUND(totalamount) from orders;

#Q21. Retrieve OrderID, CustName, StoreName, OrderDate using joins.
SELECT o.orderid,c.custname,s.storename,o.orderdate
from orders o
INNER JOIN customers c
on o.customerid = c.customerid
INNER JOIN stores s
on o.storeid = s.storeid;

#Q22. List all products purchased by a specific customer using joins.
SELECT p.productname, oi.Quantity
FROM orderitems oi
INNER JOIN orders o 
ON oi.Orderid= o.orderid
INNER JOIN products p 
ON oi.productid = p.productid
WHERE o.customerid = 1;

#Q23. Get store-wise quantity sold for each product.
SELECT s.storename, p.productname, SUM(oi.Quantity)
FROM orderitems oi
INNER JOIN orders o 
ON oi.orderid = o.orderid
INNER JOIN stores s
ON o.storeid = s.storeid
INNER JOIN products p 
ON oi.productid = p.productid
GROUP BY s.storename, p.productname;
	
#Q24. Find customers who have not placed any orders.
SELECT c.custname
from customers c
LEFT JOIN orders o
on c.customerid = o.customerid
where o.orderid is null;

#Q25. Display StoreName and ManagerName for stores with card payments.
SELECT DISTINCT s.storename, s.managername
from stores s
INNER JOIN orders o 
on s.storeid = o.storeid
INNER JOIN payments p 
on o.orderid = p.orderid
WHERE p.paymentmode = 'Card';

#Q26. Retrieve OrderID, PaymentMode, PaymentDate for all orders including unpaid ones.
SELECT o.orderid,p.paymentmode,p.paymentdate
from orders o
LEFT JOIN payments p
on o.orderid = p.orderid;

#Q27. Find product with highest UnitPrice.
SELECT p.productname,MAX(p.unitprice)
from products p
group by p.productname
limit 1;

#Q28. Retrieve customers whose JoinDate is earlier than the earliest JoinDate.
SELECT *FROM customers
WHERE joindate < (SELECT MIN(joindate) FROM customers);

#Q29. Display store located in the same city as CustomerID 101.
SELECT *FROM stores
WHERE city = (SELECT city FROM customers WHERE customerid = 101);

#Q30. Retrieve orders whose TotalAmount is greater than average order value.
SELECT orderid,totalamount
FROM orders
WHERE totalamount > (SELECT AVG(totalamount) FROM orders);

#Q31. Retrieve products whose UnitPrice is greater than any product in Groceries.
SELECT *FROM products
WHERE unitprice > ANY (SELECT unitprice FROM products WHERE category = 'Groceries');

#Q32. List customers whose city matches any city containing a store.
SELECT *from Customers
WHERE City IN (SELECT City FROM Stores);

#Q33. Find orders for customers with status Active.
SELECT *from orders o
LEFT JOIN customers c
on o.customerid = c.customerid
where c.status = 'active';

#Q34. Display stores where at least one order exceeds 5000.
SELECT DISTINCT s.storename
from stores s
INNER JOIN orders o 
on s.storeid = o.Storeid
WHERE o.totalamount > 5000;

#Q35. Retrieve OrderItems for products belonging to categories returned by a subquery.
SELECT *from orderitems
WHERE productid IN (SELECT productid FROM products WHERE Category IN ('Electronics','Groceries'));

#Q36. Reduce stock of a product inside a transaction and rollback if payment fails.
START TRANSACTION;
UPDATE Products
SET Stock = Stock - 1
WHERE ProductID = 101;
ROLLBACK;

#Q37. Insert order, order items, and payment using a transaction and commit only if all succeed.
START TRANSACTION;
INSERT INTO Orders(OrderID, CustomerID,StoreID, OrderDate, TotalAmount) 
 VALUES (300, 1, 1, '2024-05-01', 1500);
INSERT INTO OrderItems(ItemID, OrderID, ProductID, Quantity, LineTotal) 
VALUES (20, 300, 108, 3, 120);
INSERT INTO Payments(PaymentID, OrderID, PaymentMode, PaymentDate, AmountPaid)
VALUES (20, 300, 'UPI', '2024-05-02', 1500);
COMMIT;

select *from orders;
select *from orderitems;
select *from payments;

#Q38. Attempt to delete a store with existing orders and observe constraint failure.
DELETE FROM Stores 
WHERE storeid = 1;

#Q39. Demonstrate SAVEPOINT usage while updating product records.
START TRANSACTION;
UPDATE products
SET unitprice = unitprice + 10
WHERE productid = 101;
SAVEPOINT S1;

UPDATE products
SET unitprice = unitprice + 20
WHERE productid = 102;
ROLLBACK TO S1;
COMMIT;

#Q40. Reverse a customer’s last order using ROLLBACK.
START TRANSACTION;
DELETE FROM payments 
WHERE orderid = 208;
DELETE FROM orderitems
WHERE orderid = 208;
DELETE FROM orders 
WHERE orderid = 208;

ROLLBACK;  

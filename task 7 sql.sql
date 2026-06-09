show databases;
create database customerdb;
Use customerdb;
CREATE TABLE Customers (CustomerID INT PRIMARY KEY,CustomerName VARCHAR(50));
CREATE TABLE Orders (OrderID INT PRIMARY KEY,CustomerID INT);
INSERT INTO Customers VALUES(1, 'ravi'),(2, 'sitha'),(3, 'rahul');
INSERT INTO Orders VALUES(101, 1),(102, 2);
select * from customers;
select * from Orders;
UPDATE Customers
SET CustomerName = 'Abhi'
WHERE CustomerID = 1;
UPDATE Customers
SET CustomerName = 'Hasini'
WHERE CustomerID = 2;
UPDATE Customers
SET CustomerName = 'Prasanna'
WHERE CustomerID = 3; 
1.innerjoin
SELECT C.CustomerID, C.CustomerName, O.OrderID
FROM Customers C
INNER JOIN Orders O
ON C.CustomerID = O.CustomerID; 
2.left join
SELECT C.CustomerID, C.CustomerName, O.OrderID
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID;
3.insert(103,4)
INSERT INTO Orders VALUES (103, 4);
SELECT O.OrderID, O.CustomerID
FROM Orders O
LEFT JOIN Customers C
ON O.CustomerID = C.CustomerID
WHERE C.CustomerID IS NULL;
4.full outer join 
SELECT C.CustomerID, C.CustomerName, O.OrderID
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID
UNION
SELECT C.CustomerID, C.CustomerName, O.OrderID
FROM Customers C
RIGHT JOIN Orders O
ON C.CustomerID = O.CustomerID;
5.insert orders from customer values
INSERT INTO Orders VALUES (104, 1);
SELECT C.CustomerID,
       C.CustomerName,
       COUNT(O.OrderID) AS TotalOrders
FROM Customers C
LEFT JOIN Orders O
ON C.CustomerID = O.CustomerID
-- GROUP BY C.CustomerID, C.CustomerName;

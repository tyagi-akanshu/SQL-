CREATE DATABASE Order_Stores_Data 

USE Order_Stores_Data 


CREATE TABLE Orders_Table
(Order_Date Date,
Region CHAR (50),
Rep CHAR (50),
Order_Item CHAR (50),
Units INT,
Unit_Cost Money,
Total_Price Money,
Order_Id INT Primary Key
);

CREATE TABLE Stores_Table
(Store_Id INT,
Store_Type Char(50),
Assortment INT,
Competition_Distance INT,
Month INT,
Year INT,
Promolnterval Varchar (50)
);

Select * From [dbo].[Orders_Table]
Select * From [dbo].[Stores_Table]

Insert into [dbo].[Orders_Table] Values
('01-06-21','East','Aruna', 'Pencil', 95, 1.99,189.05, 1)
Insert into [dbo].[Orders_Table] Values
('01-23-21','Central','Kivell', 'Eraser', 50, 19.99,999.50,2),
('02-09-21','Central','Ganeash',' ', 36, 04.99,179.64,3),
('02-26-21','Central','Payal', ' ', 27, 19.99,539.73,4),
('03-15-21','West','Sorvino',' ', 56, 02.99,167.44,5),
('04-01-21','East','Hitesh', 'Pencil', 60, 04.99,299.40,6),
('04-18-21','Central','Akshita',' ', 75,01.99,149.25,7),
('05-05-21','Central','Ruchika','Books', 90, 04.99,449.10,8),
('05-22-21','West','Surbhi',' ', 32, 01.99,63.68,9),
('06-08-21','East','Jones','Suitcase', 60,8.99, 539.40, 10)

Insert into[dbo].[Stores_Table] Values
(1,'c',21,1270,9,2008,'Jan'),
(2,'a',28,570,11,2007,'Feb'),
(3,'a',49,14130,12,2006,'Mar'),
(4,'c',16,620,9,2009,' '),
(5,'a',17,29910,4,2015,'May'),
(6,'a',46,310,12,2013,' '),
(7,'a',43,24000,4,2013,' '),
(8,'a',14,7520,10,2014,'Aug'),
(9,'a',49,2030,8,2000,' '),
(10,'a',26,3160,9,2009,'Oct')

Alter Table [dbo].[Stores_Table] Add Store_Names Char(50)

Select * From [dbo].[Stores_Table]

Update [dbo].[Stores_Table]
Set Store_Names ='Car'
Where Store_Id = 1 

Update [dbo].[Stores_Table]
Set Store_Names = 'Scraps'
Where Store_Id = 10

Alter Table [dbo].[Stores_Table] ADD Foreign key (Store_Id) References [dbo].[Orders_Table] (Order_Id)

Update Orders_Table
SET Order_Item = 'Box'
Where Order_Id = 9 

Update Stores_Table
SET Promolnterval = 
Where Store_Id = 4

Update Stores_Table
SET Promolnterval = 'Apr' 
Where Year = 2009 

Update Stores_Table
SET Promolnterval = 'July' 
Where Year = 2013

Update Stores_Table
SET Promolnterval = 'June' 
Where Store_Id = 6

Update Stores_Table
SET Promolnterval = 'July' 
Where Store_Id = 7

Update Stores_Table
SET Promolnterval = 'Sept' 
Where Store_Id = 9

Update Stores_Table
SET Promolnterval = 'Oct' 
Where Store_Id = 10

 
Select * from Orders_Table

EXEC sp_rename '[dbo].[Stores_Table].Assortment','Store_Nos'

EXEC sp_rename '[dbo].[Orders_Table].Order_Item', 'Item_Name'
EXEC sp_rename '[dbo].[Orders_Table].Rep', 'Customers_Name'

Select Unit_Cost From Orders_Table
Order by Unit_Cost Desc


Select Unit_Cost From Orders_Table
Order by Unit_Cost Asc

EXEC sp_rename '[dbo].[Orders_Table].Customers_Name', 'Cus_Name'



Select Region ,Count(Region) As Cus_Name from Orders_Table
Group By Region

Select Sum ( Unit_cost) AS Unit_Cost from Orders_Table
Select Sum (Total_Price) AS Total_Price from Orders_Table

Select Order_Date, Region,Order_Id From Orders_Table
Where Order_Id = 4 or Order_Id = 5 or Order_Id = 6 or Order_Id = 9

Select Competition_Distance From Stores_Table
Where Competition_Distance = 29910 or Competition_Distance = 310 or Competition_Distance = 3160

Select Item_Name, Total_Price From Orders_Table
Where Total_Price > 200 And Total_Price < 400

Select * From Stores_Table
EXEC sp_rename '[dbo].[Stores_Table].Competition_Distance', 'CD'


Select SUM (CD) AS Totle_CD From Stores_Table


Select  Count(Store_Type) AS Store_Type, Count (CD) AS CD From Stores_Table


Select * from Orders_Table
Cross Join Stores_Table

Drop Database [Order_Stores_Data]

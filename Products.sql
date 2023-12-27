CREATE DATABASE Products 

USE Products 
 
CREATE TABLE Product_Table
(Product_Id INT,
Country CHAR (50),
Product CHAR (50),
Units_Sold Decimal (20),
Manufactruing_Price Money,
Sales_Price Money,
Gross_Sales Money,
Sales MOney,
COGS Money,
Profit Money,
Date VARCHAR(50),
Month_Number INT,
Month_Name CHAR(15),
Year INT,
);

INSERT INTO Product_Table VALUES (1, 'Canada', ' Carretera', 1618.5, '$3.00', '$20.00', '$32,370.00', '$32,370.00', '$16,185.00', '$16,185.00', '01-01-2014', 1, 'January', 2014),
(2, 'Germany', ' Carretera', 1321, '$3.00', '$20.00', '$26,420.00', '$26,420.00', '$13,210.00', '$13,210.00', '01-01-2014', 1, 'January', 2015),
(3, 'France', ' Carretera', 2178, '$3.00', '$15.00', '$32,670.00', '$32,670.00', '$21,780.00', '$10,890.00', '01-06-2014', 6, 'June', 2016),
(4, 'Germany', ' Carretera', 888, '$3.00', '$15.00', '$13,320.00', '$13,320.00', '$8,880.00', '$4,440.00', '01-06-2014', 6, 'June', 2017),
(5, 'Mexico', ' Carretera', 2470, '$3.00', '$15.00', '$37,050.00', '$37,050.00', '$24,700.00', '$12,350.00', '01-06-2014', 6, 'June', 2018),
(6, 'Germany', ' Carretera', 1513, '$3.00', '$350.00', '$5,29,550.00', '$5,29,550.00', '$3,93,380.00', '$1,36,170.00', '01-12-2014', 12, 'December', 2019),
(7, 'Germany', 'Montana', 921, '$5.00', '$15.00', '$13,815.00', '$13,815.00', '$9,210.00', '$4,605.00', '01-03-2014', 3, 'March', 2020),
(8, 'Canada', 'Montana', 2518, '$5.00', '$12.00', '$30,216.00', '$30,216.00', '$7,554.00', '$22,662.00', '01-06-2014', 6, 'June', 2021)



Select * From Product_Table

Delete Product_Table
Where Units_Sold = 1618.50

Delete Product_Table
Where Units_Sold = 888

Delete Product_Table
Where Units_Sold = 2470

Drop Table Product_Table

CREATE TABLE Product_Table
(Product_Id INT,
Country CHAR (50),
Product CHAR (50),
Units_Sold Decimal (20),
Manufactruing_Price Money,
Sales_Price Money,
Gross_Sales Money,
Sales MOney,
COGS Money,
Profit Money,
Date VARCHAR(50),
Month_Number INT,
Month_Name CHAR(15),
Year INT,
);

INSERT INTO Product_Table VALUES (1, 'Canada', ' Carretera', 1618.5, '$3.00', '$20.00', '$32,370.00', '$32,370.00', '$16,185.00', '$16,185.00', '01-01-2014', 1, 'January', 2014),
(2, 'Germany', ' Carretera', 1321, '$3.00', '$20.00', '$26,420.00', '$26,420.00', '$13,210.00', '$13,210.00', '01-01-2014', 1, 'January', 2015),
(3, 'France', ' Carretera', 2178, '$3.00', '$15.00', '$32,670.00', '$32,670.00', '$21,780.00', '$10,890.00', '01-06-2014', 6, 'June', 2016),
(4, 'Germany', ' Carretera', 888, '$3.00', '$15.00', '$13,320.00', '$13,320.00', '$8,880.00', '$4,440.00', '01-06-2014', 6, 'June', 2017),
(5, 'Mexico', ' Carretera', 2470, '$3.00', '$15.00', '$37,050.00', '$37,050.00', '$24,700.00', '$12,350.00', '01-06-2014', 6, 'June', 2018),
(6, 'Germany', ' Carretera', 1513, '$3.00', '$350.00', '$5,29,550.00', '$5,29,550.00', '$3,93,380.00', '$1,36,170.00', '01-12-2014', 12, 'December', 2019),
(7, 'Germany', 'Montana', 921, '$5.00', '$15.00', '$13,815.00', '$13,815.00', '$9,210.00', '$4,605.00', '01-03-2014', 3, 'March', 2020),
(8, 'Canada', 'Montana', 2518, '$5.00', '$12.00', '$30,216.00', '$30,216.00', '$7,554.00', '$22,662.00', '01-06-2014', 6, 'June', 2021)


Select * from Product_Table

Select sum (Sales) AS Totale_Sales  from Product_Table
Select sum (COGS) AS Totale_Sales from Product_Table

Select top 1 Year, Sales from Product_Table
order by Sales desc

Select  Product, Sales from Product_Table
where Sales = 37050.00

Select Country, Profit from Product_Table
Where Profit > 4605 and profit < 22662

Select Product_Id, Sales, COGS from Product_Table
where COGS = 24700



Select * From Product_Table AS P
Inner Join ITEMS_TABLE AS I
ON
P.Product_Id = I.Item_id

Select * From Product_Table AS P
Full Outer Join ITEMS_TABLE AS I
ON
P.Product_Id = I.Item_id

Select * From Product_Table AS P
Left Join ITEMS_TABLE AS I
ON
P.Product_Id = I.Item_id

Select * From Product_Table AS P
Right Join ITEMS_TABLE AS I
ON
P.Product_Id = I.Item_id

Select * From Product_Table AS P
Cross Join ITEMS_TABLE AS I

Select Item_Description, Product From Product_Table AS P
Inner Join ITEMS_TABLE AS I
ON
P.Product_Id = I.Item_id
Where COGS = 13210
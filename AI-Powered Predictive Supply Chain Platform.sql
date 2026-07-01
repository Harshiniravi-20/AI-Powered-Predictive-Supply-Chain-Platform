CREATE DATABASE SupplyChain_AI;
USE SupplyChain_AI;

SHOW TABLES;

SELECT * FROM supply_chain;

--------------------
--- Total Revenue --
--------------------
SELECT SUM(Sales_Amount) AS Total_Revenue
FROM supply_chain;

-----------------------
-- Revenue by Region --
------------------------
SELECT Region,
SUM(Sales_Amount) AS Revenue
FROM supply_chain
GROUP BY Region;

-----------------------------
-- Low Inventory Detection --
-----------------------------
SELECT Product_Name,
Inventory_Level
FROM supply_chain
WHERE Inventory_Level < 100;

--------------------------
-- Supplier Performance --
---------------------------
SELECT Supplier,
AVG(Shipping_Cost) AS Avg_Cost
FROM supply_chain
GROUP BY Supplier;

------------------------------
-- Delivery Status Analysis --
------------------------------
SELECT Delivery_Status,
COUNT(*) AS Total_Orders
FROM supply_chain
GROUP BY Delivery_Status;


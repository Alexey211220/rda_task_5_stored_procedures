DROP DATABASE ShopDB;

CREATE DATABASE ShopDB;

USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    JOIN Warehouses ON ProductInventory.WarehouseID = Warehouses.ID
    WHERE ProductInventory.WarehouseID = warehouse_id;
END //
DELIMITER ;
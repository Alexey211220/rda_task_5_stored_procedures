USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount, Warehouses.ID
    FROM ProductInventory
    WHERE WarehouseID = warehouse_id
    JOIN Products ON ProductInventory.ProductID = Products.ID
    JOIN Warehouses ON ProductInventory.WarehouseID = Warehouses.ID;
END //
DELIMITER ;
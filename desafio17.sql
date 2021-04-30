DELIMITER $$
CREATE TRIGGER orders_automatic_insert_orderDate
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END;
$$ DELIMITER ;

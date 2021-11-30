DELIMITER $$
CREATE PROCEDURE ReceivePurchaseOrder()
BEGIN

DECLARE done INT DEFAULT 0;
DECLARE theId INT DEFAULT 0;
DECLARE id_cursor CURSOR FOR 
SELECT DISTINCT ID
FROM purchaseOrder
WHERE orderStateId =
(SELECT id
FROM orderState
WHERE state = "Payment sent");

DECLARE CONTINUE HANDLER 
FOR NOT FOUND SET done = 1;
OPEN id_cursor;

get_id: LOOP
FETCH id_cursor INTO theId;
IF done = 1 THEN 
LEAVE get_id;
END IF;

UPDATE purchaseOrder
SET orderStateId =
(SELECT id
FROM orderState
WHERE state = "Shipped")
WHERE ID = theId; 
			
END LOOP get_id;	
END $$
DELIMITER;


DELIMITER $$
CREATE PROCEDURE DecreaseInventory()
BEGIN

DECLARE done INT DEFAULT 0;
DECLARE theProduct INT DEFAULT 0;
DECLARE theQuantity INT DEFAULT 0;

DECLARE ship_cursor CURSOR FOR 
SELECT DISTINCT productId, quantity
FROM customerOrder
WHERE orderStateId =
(SELECT id
FROM orderState
WHERE state = "Shipped");

DECLARE CONTINUE HANDLER 
FOR NOT FOUND SET done = 1;

OPEN ship_cursor;
ship_product: LOOP
FETCH ship_cursor INTO theProduct, theQuantity;
IF done = 1 THEN 
LEAVE ship_product;
END IF;

UPDATE product
SET quantity = quantity - theQuantity
WHERE ID = theProduct;

END LOOP ship_product;	
END $$
DELIMITER;


DELIMITER $$
CREATE PROCEDURE IncreaseInventory()
BEGIN

DECLARE done INT DEFAULT 0;
DECLARE theProduct INT DEFAULT 0;
DECLARE theQuantity INT DEFAULT 0;
DECLARE receive_cursor CURSOR FOR 
SELECT DISTINCT productid, quantity
FROM purchaseOrder
WHERE orderStateId =
(SELECT id
FROM orderState
WHERE state = "Shipped");

DECLARE CONTINUE HANDLER 
FOR NOT FOUND SET done = 1;
OPEN receive_cursor;

receive_product: LOOP
FETCH receive_cursor INTO theProduct, theQuantity;
IF done = 1 THEN 
LEAVE receive_product;
END IF;

UPDATE product
SET quantity = quantity + theQuantity
WHERE ID = theProduct;
			
END LOOP receive_product;	
END $$
DELIMITER;


DELIMITER $$
CREATE PROCEDURE UpdateInventory()
BEGIN

CALL ShipCustomerOrder(),
CALL ReceivePurchaseOrder(),
CALL DecreaseInventory(),
CALL IncreaseInventory();

UPDATE customerOrder
SET orderStateId = “Completed”
WHERE ordersStateId = “Shipped”;

UPDATE purchaseOrder
SET orderStateId = “Completed”
WHERE ordersStateId = “Shipped”;

END $$
DELIMITER;

CALL IncreaseInventory();
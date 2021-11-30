ALTER TABLE customerOrder
ADD     total   decimal(7,2)    NOT NULL    DEFAULT     '0.0';

UPDATE customerOrder
SET total = quantity *
(SELECT price
FROM product
WHERE customerOrder.productId = product.id);

UPDATE customerOrder
SET orderStateId = 
(SELECT id
FROM orderState
WHERE state = "payment received");

ALTER TABLE customerPayment
ADD     paymentDate     date    NOT NULL    DEFAULT     (CURRENT_DATE);

INSERT INTO customerPayment (customerOrderId, total)
SELECT id, total
FROM customerOrder
WHERE orderStateId = 
(SELECT id
FROM orderState
WHERE state = "Payment received");

SELECT CONCAT(c.firstName, " ", c.lastName), cp.customerOrderId AS "Customer Order", 
p.description AS Product, co.total AS "Product Total"
FROM customerPayment cp, customerOrder co, customer c, product p
WHERE cp.customerOrderId = co.id
AND co.customerId = c.id
AND co.productId = p.id
ORDER BY c.lastName;

ALTER TABLE purchaseOrder
ADD     total     decimal(7,2)    NOT NULL    DEFAULT     '0.0';

UPDATE purchaseOrder
SET total = quantity *
(SELECT price
FROM product
WHERE purchaseOrder.productId = product.id);

INSERT INTO orderState(state) VALUES
("Payment sent");

SELECT supplierId , SUM(total)
FROM purchaseOrder
GROUP BY supplierId;

UPDATE purchaseOrder
SET orderStateId =
     (SELECT id
      FROM orderstate 
      WHERE state = "Payment Sent")
WHERE supplierId IN (3,4,9);

ALTER TABLE supplierTransaction
ADD     paymentDate     date    NOT NULL    DEFAULT     (CURRENT_DATE);

INSERT INTO supplierTransaction (purchaseOrderId,total) 
SELECT ID, total
FROM purchaseOrder
WHERE orderStateId = 
(SELECT ID 
FROM orderState
WHERE state = "Payment Sent");

SELECT s.supplierName AS Supplier, st.purchaseOrderId AS "Purchase Order", 
p.description AS Product, po.total AS "Product Total"
FROM supplierTransaction st, purchaseOrder po, supplier s, product p
WHERE st.purchaseOrderId = po.id
AND po.supplierId = s.id
AND po.productId = p.id
ORDER BY s.supplierName;
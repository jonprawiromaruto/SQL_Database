CREATE VIEW productSupplierDetail AS
SELECT p.description AS Product, s.supplierName AS Supplier
FROM product p, supplier s, productSupplier ps
WHERE ps.productId = p.id
AND ps.supplierId = s.id
ORDER BY supplierName;

CREATE VIEW customerOrderDetail AS
SELECT concat(c.firstName, " ", c.lastName) AS Customer, 
p.description AS Product, 
co.quantity AS Quantity, 
co.orderDate AS "Date Ordered",
o.state AS "Order Status"
FROM product p, customer c, customerOrder co, orderState o
WHERE co.customerId = c.id
AND co.productId = p.id
AND co.orderStateId = o.id;

CREATE VIEW purchaseOrderDetail AS
SELECT s.supplierName AS Supplier,
p.description AS Product,
po.quantity AS Quantity,
po.orderDate AS "Date Ordered",
o.state AS "Order Status"
FROM product p, supplier s, purchaseOrder po, orderState o
WHERE po.productId = p.id
AND po.supplierId = s.id
AND po.orderStateId = o.id;

CREATE VIEW customerPaymentDetail AS
SELECT concat(c.firstName, " ", c.lastName) AS Customer, 
cp.customerOrderId AS "Customer Order",
p.description AS Product,
co.total AS "Product Total"
FROM customerPayment cp, customerOrder co, customer c, product p
WHERE cp.customerOrderId = co.id
AND cp.customerOrderId = p.id
AND cp.customerOrderId = c.id
ORDER BY c.lastName;

CREATE VIEW supplierTransactionDetail AS
SELECT s.supplierName AS Supplier,
st.purchaseOrderId AS "Purchase Order",
p.description AS Product,
po.total AS "Product Total"
FROM supplierTransaction st, purchaseOrder po, supplier s, product p
WHERE st.purchaseOrderId = po.id
AND st.purchaseOrderId = p.id
AND st.purchaseOrderId = s.id
ORDER BY s.supplierName;

CREATE VIEW employeeSupplierDetail AS
SELECT concat(e.firstName, " ", e.lastName) AS Representative,
s.supplierName AS Supplier
FROM employee e, supplier s, employeeSupplier es
WHERE es.employeeId = e.id
AND es.supplierId = s.id
ORDER BY e.lastName;

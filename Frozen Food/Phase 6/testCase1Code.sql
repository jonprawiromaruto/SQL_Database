/*
	Test code for table customerOrder
*/

SELECT concat(c.firstName, " ", c.lastName) AS Customer, p.description AS Product, co.quantity AS Quantity, co.orderDate AS "Date Ordered", o.state AS "Order Status"
FROM customerOrder co, product p, customer c, orderState o 
WHERE co.customerId = c.id
AND co.productId = p.id
AND co.orderStateId = o.id;
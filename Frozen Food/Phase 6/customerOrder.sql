/*
   data file in order of customerId, productId, quantity, orderDate, orderStateID
   
   Column Customer should be mapped to the customer table
   Column Product should be mapped to the product table
   Column Order Status should be mapped to table orderState
   
   Use Date function DATE(NOW()) to obtain the current date
   
   a correct insert statement would be similar to (2, 3, 5, DATE(NOW()), 3)

+------------------+---------------------------------------+----------+--------------+--------------+
| Customer         | Product                               | Quantity | Date Ordered | Order Status |
+------------------+---------------------------------------+----------+--------------+--------------+
| Bradlee Esparza  | chocolate croissant                   |        2 | 2021-03-12   | New order    |
| Bradlee Esparza  | tiramisu classico                     |        4 | 2021-03-12   | New order    |
| Michelle Ramirez | broccoli florets                      |        6 | 2021-03-12   | New order    |
| Michelle Ramirez | organic quinoa                        |        4 | 2021-03-12   | New order    |
| Nico Prince      | Ground Bison                          |        4 | 2021-03-12   | New order    |
| Nico Prince      | Green Beans                           |       10 | 2021-03-12   | New order    |
| Jordana Beck     | lamb shank in rosemary and mint sauce |        4 | 2021-03-12   | New order    |
| Dane Kaiser      | coquina clams                         |        6 | 2021-03-12   | New order    |
| Grover Squires   | Potatoes au Gratin                    |        3 | 2021-03-12   | New order    |
| Javan Rennie     | red shrimp from argentina XL          |        8 | 2021-03-12   | New order    |
+------------------+---------------------------------------+----------+--------------+--------------+

*/
/*
   data file in order of productId, supplierId, quantity, orderDate, orderStateID
   
   Column Supplier should be mapped to the supplier table
   Column Product should be mapped to the product table
   Column Order Status should be mapped to table orderState
   
   Use Date function DATE(NOW()) to obtain the current date
   
   a correct insert statement would be similar to (2, 3, 5, DATE(NOW()), 3)
   
 +----------------------------------+---------------------------------------+----------+--------------+--------------+
| Supplier                         | Product                               | Quantity | Date Ordered | Order Status |
+----------------------------------+---------------------------------------+----------+--------------+--------------+
| New Direction Foods              | lamb shank in rosemary and mint sauce |       10 | 2021-03-12   | New order    |
| New Direction Foods              | veal osso buco                        |       15 | 2021-03-12   | New order    |
| Dutt and Wagner of Virginia, Inc | cooked small octopus tentacles        |       15 | 2021-03-12   | New order    |
| Ajinomoto Foods North America    | black beluga lentils                  |       12 | 2021-03-12   | New order    |
| Kellogg NA Company               | cappuccino pie                        |       20 | 2021-03-12   | New order    |
| Kellogg NA Company               | red berry cheesecake                  |       18 | 2021-03-12   | New order    |
| Monogram Foods                   | Ground Bison                          |       10 | 2021-03-12   | New order    |
| Dutt and Wagner of Virginia, Inc | Spiral Sliced Ham                     |       15 | 2021-03-12   | New order    |
| Culinary Specialties, Inc        | King Crab Legs                        |       14 | 2021-03-12   | New order    |
| John E. Koerner Company          | Lemon Dill Salmon Fillets             |       10 | 2021-03-12   | New order    |
+----------------------------------+---------------------------------------+----------+--------------+--------------+
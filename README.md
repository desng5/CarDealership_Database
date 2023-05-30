## CarDealership_Database
Dealership Inventory - ERD, DDL, DML

The dealership sells both new and used cars, and it operates a service facility. The design is based on the following business rules:

   1. A salesperson may sell many cars, but each car is sold by only one salesperson.
   2. A customer may buy many cars, but each car is purchased by only one customer.
   3. A salesperson writes a single invoice for each car he or she sells.
   4. A customer gets an invoice for each car he or she buys.
   5. A customer may come in just to have his or her car serviced; that is, a customer need not buy a car to be classified as a customer.
   6. When a customer takes one or more cars in for repair or service, one service ticket is written for each car.
   7. The car dealership maintains a service history for each of the cars serviced. The service records are referenced by the car’s serial number.
   8. A car brought in for service can be worked on by many mechanics, and each mechanic may work on many cars.


Entity Relationship Diagram
7 Tables 
   - Customers
   - Salesperson
   - Invoices
   - Tickets
   - Service_Repairs
   - Service_Tickets
   - Mechanics
   - Mechanic_Tickets
   - Parts
   - Car_Parts
 
#Suggest Run through Queries in this order:
   1. CarDealershipERD.pdf (lucidchart)
   2. cd_create_tables_ddl.sql (Tables / Database / Alter / Remove)
   3. cd_dml.sql (inserts)

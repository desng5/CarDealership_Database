INSERT INTO salespersons
VALUES
    (DEFAULT, 'Happy', 'Gilmore'),
    (DEFAULT, 'Mike', 'Jones'),
    (DEFAULT, 'Tina', 'Faye');
   

INSERT INTO customers
VALUES
    (DEFAULT, 'Dennis', 'Rodman', '111-111-1111', 'drodman@gmail.com'),
    (DEFAULT, 'Nikola', 'Jokic', '333-333-3333', 'joker@gmail.com'),
    (DEFAULT, 'Flo', 'Time', '222-555-2121', 'tflo@gmail.com'),
    (DEFAULT, 'Michael', 'Jordan', '222-222-2222', 'jumpan23mike@gmail.com');
    

INSERT INTO cars
VALUES
    (DEFAULT, 'Porsche', '911 Roadster', 2017, FALSE, 1999999.99, NULL),
    (DEFAULT, 'Subaru', 'WRX', 2015, FALSE, 8300.99,  1),
    (DEFAULT, 'Toyota', '4Runner', 2020, FALSE, 47095.99, 2),
    (DEFAULT, 'Audi', 'R8', 2022, FALSE, 175050.00, 2),
   	(DEFAULT, 'Tesla', 'Model Y', 2023, TRUE, 150000, 4);
    

INSERT INTO invoices
VALUES
    (DEFAULT, '2021-07-31', 7708.97, 2, 1),
    (DEFAULT, '2015-1-02', 26219.93, 3, 4),
    (DEFAULT, '2023-02-05', 45550.34, 1, 2),
    (DEFAULT, '2020-03-22', 51025.49, 1, 5);

INSERT INTO tickets
VALUES
    (DEFAULT, '2018-1-20', 4),
    (DEFAULT, '2020-5-01', 3),
    (DEFAULT, '2019-10-25', 2),
    (DEFAULT, '2022-9-02', 1);

INSERT INTO mechanics
VALUES
    (DEFAULT, 'Kobe', 'Bryant'),
    (DEFAULT, 'Jamal', 'Murray'),
    (DEFAULT, 'Aaron', 'Gordan'),
    (DEFAULT, 'Bruce', 'Brown');

INSERT INTO mechanic_tickets 
VALUES
    (DEFAULT, 1, 1),
    (DEFAULT, 2, 3),
    (DEFAULT, 3, 1),
    (DEFAULT, 4, 2);

INSERT INTO service_repairs 
VALUES
    (DEFAULT, 'Happy Gilmore sold his red Porche 911 Roadster to Dennis Rodman, maintenance by Jamal Murray','2021-05-11', 1006.98),
    (DEFAULT, 'Mike Jones is selling a black Tesla Model Y, maintenance by Aaron Gordan', '2022-12-16', 3000),
    (DEFAULT, 'Tina Faye sold a silver Honda Civic LX to Rob Johnson, maintenance by Bruce Brown', '2020-07-05',512.23);
    

INSERT INTO service_tickets 
VALUES
    (DEFAULT, 1, 2),
    (DEFAULT, 2, 2),
    (DEFAULT, 3, 1);

INSERT INTO parts
VALUES
    (DEFAULT, 100.99, 'air filter', 'Filter to catch dirt and debris comingig inside the car'),
    (DEFAULT, 250.99, 'battery', 'Provides power to start car'),
    (DEFAULT, 74.99, 'brake pads', 'Depending on car, its used for disc brakes'),
    (DEFAULT, 23.59, 'spark plug', 'Ignition system to help start car');

INSERT INTO car_parts
VALUES
    (DEFAULT, 1, 2),
    (DEFAULT, 1, 1),
    (DEFAULT, 3, 3),
    (DEFAULT, 4, 3);
    
SELECT *
FROM mechanics  ;
--CREATE DATABASE car_dealership;

CREATE TABLE Salespersons (
    salesperson_id SERIAL PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50)
);

CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Cars (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    car_year INTEGER,
    brand_new BOOLEAN,
    price NUMERIC(9,2),    
    customer_id INTEGER,
    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);

CREATE TABLE Invoices (
    inv_id SERIAL PRIMARY KEY,
    inv_date DATE,
    total NUMERIC(9,2),
    salesperson_id INTEGER,
    car_id INTEGER,
    FOREIGN KEY (salesperson_id)
        REFERENCES Salespersons(salesperson_id),
    FOREIGN KEY (car_id)
        REFERENCES Cars(car_id)
);

CREATE TABLE Tickets (
    ticket_id SERIAL PRIMARY KEY,
    t_date DATE,
    car_id INTEGER,
    FOREIGN KEY (car_id)
        REFERENCES Cars(car_id)
);

CREATE TABLE Mechanics (
    mechanic_id SERIAL PRIMARY KEY,
    f_name VARCHAR(50),
    l_name VARCHAR(50)
);

CREATE TABLE Mechanic_Tickets(
    m_ticket_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    mechanic_id INTEGER,
    FOREIGN KEY (ticket_id)
        REFERENCES Tickets(ticket_id),
    FOREIGN KEY (mechanic_id)
        REFERENCES Mechanics(mechanic_id)
);

CREATE TABLE Service_Repairs (
    service_id SERIAL PRIMARY KEY,
    srvc_detail VARCHAR(500),
    srvc_date DATE,
    service_price NUMERIC(8,2)
);

CREATE TABLE Service_Tickets (
    srvc_ticket_id SERIAL PRIMARY KEY,
    ticket_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY (ticket_id)
        REFERENCES Tickets(ticket_id),
    FOREIGN KEY (service_id)
       REFERENCES Service_Repairs(service_id)
);

CREATE TABLE Parts (
    part_id SERIAL PRIMARY KEY,
    part_price NUMERIC(6,2),
    part_name VARCHAR(100),
    part_details VARCHAR(500)
    
);

CREATE TABLE Car_Parts (
    car_part_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    part_id INTEGER,
    FOREIGN KEY (car_id)
        REFERENCES Cars(car_id),
    FOREIGN KEY (part_id)
        REFERENCES Parts(part_id)
);

SELECT*
FROM cars c;


-- DDL --

ALTER TABLE cars
ADD COLUMN serviced BOOLEAN DEFAULT FALSE;

CREATE OR REPLACE PROCEDURE update_car_service_status()
LANGUAGE PLPGSQL AS $$
BEGIN
    UPDATE cars
    SET serviced = EXISTS (
        SELECT 1
        FROM tickets
        WHERE cars.car_id = tickets.car_id
    );
    COMMIT;
END;
$$;
CALL update_car_service_status();

ALTER TABLE cars
DROP COLUMN is_serviced;

ALTER TABLE salespersons 
RENAME COLUMN salesperson_id TO sp_id;

ALTER TABLE mechanics 
RENAME COLUMN mechanic_id TO m_id;







   
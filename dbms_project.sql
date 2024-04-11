    select * from roles_;
    select * from supplier;
    select * from products;
    select * from warehouse;
    select * from machine;
    select * from sector;
    select * from supplier;
    select * from cargo;
    select * from transport;
    select * from payment;
    select * from order_;
    select * from department;
    select * from employee;
    select * from login;
    select * from customer;
    
 CREATE TABLE supplier (
  supplier_id INT PRIMARY KEY ,
  supplier_fname VARCHAR(50) NOT NULL,
  supplier_lname VARCHAR(50),
  supplier_loc VARCHAR(50) NOT NULL,
  product_id1 INT NOT NULL,
  product_id2 INT,
  product_id3 INT,
  phone_no1 VARCHAR(20) NOT NULL,
  phone_no2 VARCHAR(20) ,
  phone_no3 VARCHAR(20),
  email VARCHAR(50) NOT NULL
);


    INSERT INTO supplier values (1, 'John', 'Doe', 'New York', 1, 2, NULL, '1234567890', '9876543210', NULL, 'john.doe@example.com');
    INSERT INTO supplier values (2, 'Alice', 'Smith', 'Los Angeles', 3, NULL, NULL, '2345678901', NULL, NULL, 'alice.smith@example.com');
    INSERT INTO supplier values (3, 'Michael', 'Johnson', 'Chicago', 4, 5, NULL, '3456789012', '8765432109', NULL, 'michael.johnson@example.com');
    INSERT INTO supplier values (4, 'Emily', 'Davis', 'Houston', 6, 7, NULL, '4567890123', '7654321098', NULL, 'emily.davis@example.com');
    INSERT INTO supplier values (5, 'David', 'Brown', 'San Francisco', 8, NULL, NULL, '5678901234', NULL, NULL, 'david.brown@example.com');
    INSERT INTO supplier values (6, 'Sarah', 'Wilson', 'Seattle', 9, NULL, NULL, '6789012345', NULL, NULL, 'sarah.wilson@example.com');
    INSERT INTO supplier values (7, 'Matthew', 'Thompson', 'Boston', 10, NULL, NULL, '7890123456', NULL, NULL, 'matthew.thompson@example.com');
    INSERT INTO supplier values (8, 'Emma', 'Robinson', 'Miami', 9, NULL, NULL, '8901234567', NULL, NULL, 'emma.robinson@example.com');
    INSERT INTO supplier values (9, 'Daniel', 'Lee', 'Dallas', 5, NULL, NULL, '9012345678', NULL, NULL, 'daniel.lee@example.com');
    INSERT INTO supplier values (10, 'Olivia', 'Hall', 'Phoenix', 4, 3, NULL, '0123456789', '9012345678', NULL, 'olivia.hall@example.com');


CREATE TABLE warehouse (
  warehouse_id INT PRIMARY KEY,
  number_of_sectors INT not null,
  warehouse_loc_city VARCHAR(50),
  warehouse_loc_state VARCHAR(50)
);

  INSERT INTO warehouse VALUES(1, 5, 'City1', 'State1');
  INSERT INTO warehouse VALUES(2, 8, 'City2', 'State2');
  INSERT INTO warehouse VALUES(3, 3, 'City3', 'State3');
  INSERT INTO warehouse VALUES(4, 6, 'City4', 'State4');
  INSERT INTO warehouse VALUES(5, 4, 'City5', 'State5');
  INSERT INTO warehouse VALUES(6, 7, 'City6', 'State6');
  INSERT INTO warehouse VALUES(7, 2, 'City7', 'State7');
  INSERT INTO warehouse VALUES(8, 9, 'City8', 'State8');
  INSERT INTO warehouse VALUES(9, 5, 'City9', 'State9');
  INSERT INTO warehouse VALUES(10, 3, 'City10', 'State10');


CREATE TABLE sector (
    sector_id INT,
    sector_loc VARCHAR(50),
    product_type VARCHAR(50),
    product_id1 INT NOT NULL,
    product_id2 INT,
    product_id3 INT,
    warehouse_id INT,
    FOREIGN KEY (warehouse_id) REFERENCES warehouse (warehouse_id),
    primary key(sector_id,warehouse_id)
);





  INSERT INTO sector VALUES(1, 'Loc1', 'Type1', 1, 2, 3, 1);
  INSERT INTO sector VALUES(2, 'Loc2', 'Type2', 4, 5, 6, 1);
  INSERT INTO sector VALUES(3, 'Loc3', 'Type3', 7, 8, 9, 2);
  INSERT INTO sector VALUES(4, 'Loc4', 'Type4', 10, 11, 12, 2);
  INSERT INTO sector VALUES(5, 'Loc5', 'Type5', 13, 14, 15, 3);
  INSERT INTO sector VALUES(6, 'Loc6', 'Type6', 16, 17, 18, 3);
  INSERT INTO sector VALUES(7, 'Loc7', 'Type7', 19, 20, 21, 4);
  INSERT INTO sector VALUES(8, 'Loc8', 'Type8', 22, 23, 24, 4);
  INSERT INTO sector VALUES(9, 'Loc9', 'Type9', 25, 26, 27, 5);
  INSERT INTO sector VALUES(10, 'Loc10', 'Type10', 28, 29, 30, 5);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  supplier_id INT,
  product_name VARCHAR(50),
  product_type VARCHAR(50),
  product_cost DECIMAL(10, 2),
  rating INT,
  FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
);


  INSERT INTO products VALUES (1, 1, 'Product1', 'Type1', 10.99, 4);
  INSERT INTO products VALUES (2, 2, 'Product2', 'Type2', 15.99, 3);
  INSERT INTO products VALUES (3, 1, 'Product3', 'Type1', 12.50, 5);
  INSERT INTO products VALUES (4, 3, 'Product4', 'Type3', 9.99, 4);
  INSERT INTO products VALUES (5, 2, 'Product5', 'Type2', 18.75, 3);
  INSERT INTO products VALUES (6, 1, 'Product6', 'Type1', 14.99, 5);
  INSERT INTO products VALUES (7, 3, 'Product7', 'Type3', 11.25, 4);
  INSERT INTO products VALUES (8, 2, 'Product8', 'Type2', 17.50, 3);
  INSERT INTO products VALUES (9, 1, 'Product9', 'Type1', 9.99, 5);
  INSERT INTO products VALUES (10, 3, 'Product10', 'Type3', 13.75, 4);

create table machine(
    machine_id INT PRIMARY KEY,
  weight INT,
  machine_name VARCHAR(50)
);


INSERT INTO machine VALUES(1, 100, 'Machine A');
INSERT INTO machine VALUES(2, 150, 'Machine B');
INSERT INTO machine VALUES(3, 200, 'Machine C');
INSERT INTO machine VALUES(4, 120, 'Machine D');
INSERT INTO machine VALUES(5, 180, 'Machine E');
INSERT INTO machine VALUES(6, 90, 'Machine F');
INSERT INTO machine VALUES(7, 160, 'Machine G');
INSERT INTO machine VALUES(8, 140, 'Machine H');
INSERT INTO machine VALUES(9, 110, 'Machine I');
INSERT INTO machine VALUES(10, 170, 'Machine J');

create table department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


  INSERT INTO department VALUES (1, 'Department1');
  INSERT INTO department VALUES (2, 'Department2');
  INSERT INTO department VALUES (3, 'Department3');
  INSERT INTO department VALUES (4, 'Department4');
  INSERT INTO department VALUES (5, 'Department5');
  INSERT INTO department VALUES (6, 'Department6');
  INSERT INTO department VALUES (7, 'Department7');
  INSERT INTO department VALUES (8, 'Department8');
  INSERT INTO department VALUES (9, 'Department9');
  INSERT INTO department VALUES (10, 'Department10');

create table transport(
    vehicle_id int primary key,
    vehicle_name varchar(20),
    maintainace_cost int,
    route_id int not null,
    source_id int not NULL,
    dest_id int not null,
    start_date date not null,
    reach_date date not null  
);


  INSERT INTO transport VALUES (1, 'Vehicle1', 1000, 1, 1, 2, '01-may-2023','02-jan-2022');
  INSERT INTO transport VALUES (2, 'Vehicle2', 1500, 2, 2, 3, '02-may-2002', '04-june-2006');
  INSERT INTO transport VALUES (3, 'Vehicle3', 1200, 3, 3, 4, '02-may-2003', '04-june-2007');
  INSERT INTO transport VALUES (4, 'Vehicle4', 1800, 4, 4, 5, '02-may-2004', '04-june-2008');
  INSERT INTO transport VALUES (5, 'Vehicle5', 900, 5, 5, 6,  '02-may-2005', '04-june-2009');
  INSERT INTO transport VALUES (6, 'Vehicle6', 2000, 6, 6, 7, '02-may-2006', '04-june-2010');
  INSERT INTO transport VALUES (7, 'Vehicle7', 1700, 7, 7, 8, '02-may-2007', '04-june-2011');
  INSERT INTO transport VALUES (8, 'Vehicle8', 1400, 8, 8, 9, '02-may-2008', '04-june-2012');
  INSERT INTO transport VALUES (9, 'Vehicle9', 1100, 9, 9, 10,'02-may-2009', '04-june-2013');
  INSERT INTO transport VALUES (10, 'Vehicle10', 1600, 10, 10, 1, '02-may-2010', '04-june-2014');

create table payment(
    payment_id int primary key,
    total_amount int,
    payment_type varchar(20),
    discount int,
    payment_date date not null
);
select * from payment;

   INSERT INTO payment VALUES (1, 100, 'Credit Card', 10, '06-jan-2001');
    INSERT INTO payment VALUES (2, 50, 'Cash', 0, '06-jan-2002');
    INSERT INTO payment VALUES (3, 75, 'Credit Card', 5, '06-jan-2003');
    INSERT INTO payment VALUES (4, 200, 'Cash', 0, '06-jan-2004');
    INSERT INTO payment VALUES (5, 150, 'Debit Card', 0, '06-jan-2005');
    INSERT INTO payment VALUES (6, 80, 'Credit Card', 10, '06-jan-2006');
    INSERT INTO payment VALUES (7, 120, 'Cash', 0, '06-jan-2007');
    INSERT INTO payment VALUES (8, 90, 'Debit Card', 0, '06-jan-2008');
    INSERT INTO payment VALUES (9, 60, 'Credit Card', 5, '06-jan-2009');
    INSERT INTO payment VALUES (10, 180, 'Cash', 0, '06-jan-2010');


create table customer(
    customer_id int primary key,
    customer_name varchar(20) not null,
    customer_email varchar(20) not null,
    customer_phone int,
    customer_state varchar(20),
    customer_city varchar(20),
    customer_street varchar(20)
);


    INSERT INTO customer VALUES (1, 'John Doe', 'john@example.com', 1234567890, 'California', 'Los Angeles', 'Main Street');
    INSERT INTO customer VALUES (2, 'Jane Smith', 'jane@example.com', 9876543210, 'New York', 'New York City', 'Broadway');
    INSERT INTO customer VALUES (3, 'Mike Johnson', 'mike@example.com', 4567891230, 'Texas', 'Houston', 'Oak Street');
    INSERT INTO customer VALUES (4, 'Emily Davis', 'emily@example.com', 7891234560, 'Florida', 'Miami', 'Palm Avenue');
    INSERT INTO customer VALUES (5, 'Robert Wilson', 'robert@example.com', 3216549870, 'Illinois', 'Chicago', 'Park Road');
    INSERT INTO customer VALUES (6, 'Sarah Thompson', 'sarah@example.com', 6543217890, 'Washington', 'Seattle', 'Pine Street');
    INSERT INTO customer VALUES (7, 'David Anderson', 'david@example.com', 9876541230, 'Colorado', 'Denver', 'Mountain View');
    INSERT INTO customer VALUES (8, 'Amy Brown', 'amy@example.com', 4567893210, 'Arizona', 'Phoenix', 'Sunset Boulevard');
    INSERT INTO customer VALUES (9, 'Michael Lee', 'michael@example.com', 7891236540, 'Massachusetts', 'Boston', 'Maple Avenue');
    INSERT INTO customer VALUES (10, 'Olivia Taylor', 'olivia@example.com', 3216547890, 'Nevada', 'Las Vegas', 'Sapphire Street');

CREATE TABLE roles_(
    ROLE_ID INT PRIMARY KEY,
    ROLE_NAME VARCHAR(20),
    ROLE_DESC VARCHAR(20)
);


    INSERT INTO roles_ VALUES (1, 'Admin', 'Administrator role');
    INSERT INTO roles_ VALUES (2, 'Manager', 'Manager role');
    INSERT INTO roles_ VALUES (3, 'Supervisor', 'Supervisor role');
    INSERT INTO roles_ VALUES (4, 'Employee', 'Employee role');
    INSERT INTO roles_ VALUES (5, 'Accountant', 'Accountant role');
    INSERT INTO roles_ VALUES (6, 'Salesperson', 'Salesperson role');
    INSERT INTO roles_ VALUES (7, 'Engineer', 'Engineer role');
    INSERT INTO roles_ VALUES (8, 'Analyst', 'Analyst role');
    INSERT INTO roles_ VALUES (9, 'Consultant', 'Consultant role');
    INSERT INTO roles_ VALUES (10, 'Support', 'Support role');

create table cargo(
    cargo_id int primary key,
    status varchar(20) not null,
    machine_id int,
    cargo_type varchar(20),
    weight int,
    vehicle_id int,
    warehouse_id int,
    foreign key(warehouse_id) references warehouse(warehouse_id),
    foreign key(machine_id) references machine(machine_id),
    foreign key(vehicle_id) references transport(vehicle_id)
);
    INSERT INTO cargo VALUES (1, 'Pending', 1, 'Electronics', 100, 1, 1);
    INSERT INTO cargo VALUES (2, 'Delivered', 2, 'Furniture', 500, 2, 2);
    INSERT INTO cargo VALUES (3, 'In Transit', 3, 'Clothing', 200, 3, 1);
    INSERT INTO cargo VALUES (4, 'Pending', 4, 'Books', 50, 4, 3);
    INSERT INTO cargo VALUES (5, 'Delivered', 5, 'Appliances', 300, 2, 2);
    INSERT INTO cargo VALUES (6, 'In Transit', 6, 'Toys', 150, 1, 3);
    INSERT INTO cargo VALUES (7, 'Delivered', 7, 'Food', 75, 3, 2);
    INSERT INTO cargo VALUES (8, 'Pending', 8, 'Electronics', 250, 4, 1);
    INSERT INTO cargo VALUES (9, 'In Transit', 9, 'Furniture', 400, 2, 3);
    INSERT INTO cargo VALUES (10, 'Delivered', 10, 'Clothing', 120, 1, 2);
    
    
create table order_(
    order_id int primary key,
    customer_id int,
    cargo_id int,
    payment_id int,
    product_id1 INT NOT NULL,
    product_id2 INT,
    product_id3 INT,
    foreign key(customer_id) references customer(customer_id),
    foreign key(payment_id) references payment(payment_id),
    foreign key(cargo_id) references cargo(cargo_id)
);

    INSERT INTO order_ VALUES (1, 1, 1, 1, 1, NULL, NULL);
    INSERT INTO order_ VALUES (2, 2, 2, 2, 2, 3, NULL);
    INSERT INTO order_ VALUES (3, 3, 3, 3, 4, 5, NULL);
    INSERT INTO order_ VALUES (4, 4, 4, 4, 6, 7, 8);
    INSERT INTO order_ VALUES (5, 5, 5, 5, 9, NULL, NULL);
    INSERT INTO order_ VALUES (6, 1, 6, 6, 10, NULL, NULL);
    INSERT INTO order_ VALUES (7, 2, 7, 7, 1, 2, 3);
    INSERT INTO order_ VALUES (8, 3, 8, 8, 4, NULL, NULL);
    INSERT INTO order_ VALUES (9, 4, 9, 9, 5, 6, NULL);
    INSERT INTO order_ VALUES (10, 5, 10, 10, 7, 8, 9);

CREATE TABLE EMPLOYEE(
    EMP_ID INT PRIMARY KEY,
    EXPRIENCE INT,
    SECTOR_ID INT,
    DEPT_ID INT,
    EMP_NAME VARCHAR(20),
     emp_state varchar(20),
    emp_city varchar(20),
    emp_street varchar(20),
    SEX VARCHAR(20),
    WAREHOUSE_ID INT,
    ROLE_ID INT,
    FOREIGN KEY (WAREHOUSE_ID)REFERENCES WAREHOUSE(WAREHOUSE_ID),
    FOREIGN KEY (ROLE_ID)REFERENCES roles_(ROLE_ID),
    FOREIGN KEY (DEPT_ID)REFERENCES DEPARTMENT(DEPT_ID)

);

    INSERT INTO EMPLOYEE VALUES (1, 5, 1, 1, 'John Doe', 'California', 'Los Angeles', '123 Main St', 'Male',1 , 1);
    INSERT INTO EMPLOYEE VALUES (2, 3, 2, 2, 'Jane Smith', 'New York', 'New York City', '456 Elm St', 'Female', 3, 2);
    INSERT INTO EMPLOYEE VALUES (3, 8, 3, 1, 'Michael Johnson', 'Texas', 'Houston', '789 Oak St', 'Male', 4, 3);
    INSERT INTO EMPLOYEE VALUES (4, 6, 2, 3, 'Emily Davis', 'Florida', 'Miami', '321 Maple St', 'Female', 2, 2);
    INSERT INTO EMPLOYEE VALUES (5, 4, 1, 2, 'Robert Wilson', 'California', 'San Francisco', '567 Pine St', 'Male', 7, 7);
    INSERT INTO EMPLOYEE VALUES (6, 2, 3, 1, 'Jessica Brown', 'Texas', 'Austin', '890 Walnut St', 'Female', 6, 3);
    INSERT INTO EMPLOYEE VALUES (7, 7, 2, 3, 'David Lee', 'Florida', 'Orlando', '432 Cedar St', 'Male', 7, 2);
    INSERT INTO EMPLOYEE VALUES (8, 4, 1, 2, 'Sarah Thompson', 'California', 'San Diego', '876 Birch St', 'Female',6 , 7);
    INSERT INTO EMPLOYEE VALUES (9, 3, 3, 1, 'Christopher Clark', 'Texas', 'Dallas', '1098 Oak St', 'Male',8 , 3);
    INSERT INTO EMPLOYEE VALUES (10, 5, 2, 3, 'Jennifer Hall', 'Florida', 'Tampa', '543 Maple St', 'Female', 10, 2);

    


create table login(
    login_id varchar(20) primary key,
    username varchar(20),
    password_ varchar(20),
    customer_id int,
    emp_id int,
    foreign key(customer_id) references customer(customer_id),
    foreign key(EMP_ID) references employee(emp_id)
);


    INSERT INTO login VALUES ('login1', 'user1', 'pass1', 1, NULL);
    INSERT INTO login VALUES ('login2', 'user2', 'pass2', 2, NULL);
    INSERT INTO login VALUES ('login3', 'user3', 'pass3', 3, NULL);
    INSERT INTO login VALUES ('login4', 'user4', 'pass4', 4, NULL);
    INSERT INTO login VALUES ('login5', 'user5', 'pass5', 5, NULL);
    INSERT INTO login VALUES ('login6', 'user6', 'pass6', NULL, 1);
    INSERT INTO login VALUES ('login7', 'user7', 'pass7', NULL, 2);
    INSERT INTO login VALUES ('login8', 'user8', 'pass8', NULL, 3);
    INSERT INTO login VALUES ('login9', 'user9', 'pass9', NULL, 4);
    INSERT INTO login VALUES ('login10', 'user10', 'pass10', NULL, 5);
    
    --QUERIES
    
--count the number of departmenst that have a department name given as input
select (warehouse_id) from
(select * from employee 
where dept_id=(select dept_id from department where dept_name='Department3'));

--show all the products that are present in a warehouse when warehouse id is given
select product_id1,product_id2,product_id2 from sector where warehouse_id=1;

--show all the cargos that are sent from a given warehouse
select cargo_id from cargo where warehouse_id=1;

--show all the cargos on which a machine with a given machine id has worked on
select cargo_id from cargo where machine_id=1;

--show all the id of off the orders that are being transported in a given cargoid
select order_id from order_ where cargo_id=9;

--show the start date and reach date of a given orderid
select start_date,reach_date from transport where vehicle_id=(select vehicle_id from cargo where cargo_id=(select cargo_id from order_ where order_id=1));

--show the suppliers of products present in a given order id
select * from supplier where product_id1=(select product_id1 from order_ where order_id=1) or product_id2=(select product_id1 from order_ where order_id=1) or product_id2=(select product_id1 from order_ where order_id=1);

--show all products of a given supplier
select product_id1,product_id2,product_id3 from supplier where supplier_id=3;
--show in which warehouse and in which sector the products of a given supplier are stored

--show the details of a customer when a payment id is given
select * from customer where customer_id=(select customer_id from order_ where payment_id=1);





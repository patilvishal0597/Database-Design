-- 1.simple select statement
-- select shipname, customerid, cityname from orders, city where cityid = shipcityid

-- select * from orders

--2. join
-- select orders.orderid, customers.companyname, orders.orderdate
-- from orders join customers on orders.customerid = customers.customerid;

-- 3.order by
-- select * from orders order by orders.orderdate

-- 4.group by (many orders of one customer) customer id in orders table

-- select customerid from orders group by customerid;

-- 5.subquery- get products by a supplier whose supplier id is between 7-24

-- explain analyse select productid, s2.supplierid   
-- from suppliers s2, products where s2.supplierid>6 and s2.supplierid<25
-- and products.supplierid = s2.supplierid
-- order by supplierid;

-- explain analyse select productid, supplierid from products where supplierid in 
-- (select supplierid from suppliers where supplierid>6 and supplierid<25) order by supplierid;


-- queries to show performance improvement

-- explain analyse SELECT * from customers c1 left join orders o1 using(customerid) where o1.customerid is NULL

-- explain analyse SELECT * from customers c1 where EXISTS (SELECT o1.customerid from orders o1)


-- 6.subquery- employee details of employee who handled the most orders

-- select employees.employeeid, firstname, lastname from employees where employees.employeeid in 
-- (select employees.employeeid from employees, orders where employees.employeeid = orders.employeeid
-- group by employees.employeeid order by count(orders.orderid) desc limit 1)


------------------------------- Digant ---------------------------------

-- 7. Insert statement

-- insert into customers values 
-- ('IMPORNT', 'Important Notice', 'Jane Doe', 'Technical Manager', 'Rio de Jenero, 14', '(14) 555-6666', null, 45);

-- select * from customers where customers.customerid = 'IMPORNT'

-- 8. Update statement

-- update employees set lastname='Jon', firstname='Doe' where employeeid=7

-- select * from employees where employeeid = 7

-- 9. Delete statement

-- delete from customers where customerid = 'IMPORNT'

-- select * from customers



-- INDEX CREATION:

-- BEFORE INDEX CREATION
-- SELECT * FROM orders WHERE shipname='Wilman Kala';

-- CREATE INDEX shipname ON orders(shipname);

-- AFTER INDEX CREATION
-- explain analyze SELECT * FROM orders WHERE shipname='Wilman Kala'; 


-- TRIGGERS 
/*
CREATE TABLE employee_details_update_log (
	id SERIAL PRIMARY KEY,
	timestamp TIMESTAMP,
	employeeid INT NOT NULL,
	old_firstname VARCHAR(255),
	new_firstname VARCHAR(255), 
	old_lastname VARCHAR(255),
	new_lastname VARCHAR(255),
	old_title VARCHAR(255),
	new_title VARCHAR(255),
	old_reportsto INT,
	new_reportsto INT
);


-- DROP TRIGGER IF EXISTS employee_details_update 
-- ON employees;

CREATE OR REPLACE FUNCTION employee_update_trigger_fnc() 
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO employee_details_update_log
	(timestamp, employeeid, old_firstname, new_firstname,  old_lastname, new_lastname, old_title, new_title, old_reportsto, new_reportsto)
	VALUES(NOW(), NEW.employeeid, OLD.firstname, NEW.firstname, OLD.lastname, NEW.lastname, OLD.title, NEW.title, OLD.reportsto, NEW.reportsto);
RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER employee_details_update
BEFORE UPDATE ON employees
FOR EACH ROW EXECUTE FUNCTION employee_update_trigger_fnc();
*/

-- AFTER TRIGGERS
-- UPDATE employees SET title='Sales Representative L2' WHERE firstname LIKE 'A%';

-- Trigger Output
SELECT * FROM employee_details_update_log;
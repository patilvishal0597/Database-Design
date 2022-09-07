-- SELECT shipaddress, shipcity, shipregion, shipcountry, shippostalcode from orders GROUP BY shipaddress, shipcity, shipregion, shipcountry, shippostalcode;

-- SELECT address, city, region, country, postalcode from customers GROUP BY address, city, region, country, postalcode;

-- SELECT address, city, region, country, postalcode from employees GROUP BY address, city, region, country, postalcode;

-- SELECT address, city, region, country, postalcode from suppliers GROUP BY address, city, region, country, postalcode;


-- CREATE TABLE address AS (
-- SELECT address, city, region, country, postalcode from suppliers GROUP BY address, city, region, country, postalcode
-- );

-- INSERT INTO address(address, city, region, country, postalcode) 
-- SELECT shipaddress, shipcity, shipregion, shipcountry, shippostalcode from orders GROUP BY shipaddress, shipcity, shipregion, shipcountry, shippostalcode;

-- SELECT address, city, region, country, postalcode from customers GROUP BY address, city, region, country, postalcode;
-- SELECT address, city, region, country, postalcode from employees GROUP BY address, city, region, country, postalcode;

-- SELECT COUNT(1) FROM address; 
-- 218

-- SELECT address, city, region, country, postalcode from address GROUP BY address, city, region, country, postalcode;
-- 135

-- CREATE TABLE address_normalized AS (
-- SELECT address, city, region, country, postalcode from address GROUP BY address, city, region, country, postalcode
-- );


-- SELECT * FROM address_normalized;

-- alter table orders add column address_id varchar(65000);
-- alter table customers add column address_id varchar(65000);
-- alter table employees add column address_id varchar(65000);
-- alter table suppliers add column address_id varchar(65000);

update orders set address_id = concat(shipaddress, shipcity, shipregion, shipcountry, shippostalcode);
update orders set address_id = concat(shipaddress, shipcity, shipregion, shipcountry, shippostalcode);
update orders set address_id = concat(shipaddress, shipcity, shipregion, shipcountry, shippostalcode);
update orders set address_id = concat(shipaddress, shipcity, shipregion, shipcountry, shippostalcode);



DROP TABLE IF EXISTS products;
USE tractortek;

CREATE TABLE products (
	Prod_code VARCHAR(20),
    Prod_name VARCHAR(70),
    url VARCHAR(150),
    Tractor VARCHAR(70),
    Manufacturer VARCHAR(50),
    Service_plan VARCHAR(15),
    Warranty_price INT,
    2019Q1 VARCHAR(10),	
    2019Q2 VARCHAR(10),	
    2019Q3 VARCHAR(10),	
    2019Q4 VARCHAR(10),
    2020Q1 VARCHAR(10),	
    2020Q2 VARCHAR(10),	
    2020Q3 VARCHAR(10),	
    2020Q4 VARCHAR(10),
    PRIMARY KEY (Prod_code, Service_plan)
    );
    
    
    
 
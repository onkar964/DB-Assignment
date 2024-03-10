CREATE SCHEMA product_schema;
GO
CREATE TABLE product_schema.Product( 
  id int NOT NULL PRIMARY KEY, 
  name varchar, 
  desc text, 
  SKU varchar, 
  category_id int FOREIGN KEY REFERENCES product_category(id), 
  inventory_id int FOREIGN KEY REFERENCES product_inventory(id), 
  price decimal, 
  discount_id int FOREIGN KEY REFERENCES discount(id), 
  created_at timestamp, 
  modified_at timestamp, 
  deleted_at timestamp,
  ); 

CREATE TABLE product_schema.product_category( 
  id int NOT NULL PRIMARY KEY, 
  name varchar, 
  desc text,  
  created_at timestamp, 
  modified_at timestamp, 
  deleted_at timestamp,
  ); 

CREATE TABLE product_schema.product_inventory( 
  id int NOT NULL PRIMARY KEY, 
  quantity int, 
  created_at timestamp, 
  modified_at timestamp, 
  deleted_at timestamp,
  ); 

CREATE TABLE product_schema.discount( 
  id int NOT NULL PRIMARY KEY, 
  name varchar, 
  desc text,  
  descount_percentage decimal,
  active boolean,
  created_at timestamp, 
  modified_at timestamp, 
  deleted_at timestamp,
  ); 

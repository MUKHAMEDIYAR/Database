CREATE TABLE customers (
 id integer PRIMARY KEY ,
 full_name varchar(50) NOT NULL,
 timestamp timestamp NOT NULL ,
 delivery_address text NOT NULL
);
CREATE TABLE orders (
 code integer PRIMARY KEY,
 customer_id integer references customers (id),
 total_sum double precision NOT NULL CHECK ( total_sum > 0 ),
 is_paid boolean NOT NULL
);
CREATE TABLE order_items(
 order_code integer UNIQUE NOT NULL REFERENCES orders ,
 product_id varchar NOT NULL REFERENCES products,
 quantity integer NOT NULL CHECK ( QUANTITY > 0 ),
 primary key (order_code,product_id)
);
CREATE TABLE products
(
 id varchar UNIQUE NOT NULL PRIMARY KEY ,
 name varchar NOT NULL ,
 description text,
 price double precision NOT NULL CHECK (PRICE > 0)
);

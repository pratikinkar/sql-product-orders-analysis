CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category TEXT,
  price NUMERIC(10,2),
  stock_quantity INT,
  is_available BOOLEAN,
  added_on DATE
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  product_id INT,
  quantity INT,
  order_date DATE,
  customer_name VARCHAR(50),
  payment_method VARCHAR(50),
  CONSTRAINT fk_product FOREIGN KEY (product_id)
  REFERENCES products(product_id) ON DELETE CASCADE
  
);

SELECT * FROM products;
SELECT * FROM orders;

SELECT * FROM
products p INNER JOIN orders o
on o.product_id = p.product_id;

-- show the order and price with customer name 
SELECT o.order_id,o.customer_name,p.product_name , p.price 
FROM 
products p INNER JOIN orders o
on o.product_id = p.product_id;

-- show all product name they never order
SELECT p.product_name ,o.order_id
FROM
products p FULL JOIN orders o
on o.product_id = p.product_id;

-- show product name and order id of only electonics category
SELECT  p.product_name, o.order_id
FROM
products p JOIN orders o
on p.product_id = o.product_id 
where category = 'Electronics';

-- show the sorted price as high to low 
SELECT o.order_id, p.product_name, p.price
FROM
products p JOIN orders o
on p.product_id = o.product_id 
order by p.price desc ;

-- show number of count of placed order of each products
SELECT p.product_name , count (o.order_id) AS total_orders
FROM
products p left JOIN orders o
on p.product_id = o.product_id 
GROUP BY p.product_name;

-- totalrevenue earned per product
SELECT p.product_name , sum (o.quantity * p.price) AS revenue
FROM
products p JOIN orders o
on p.product_id = o.product_id 
GROUP BY p.product_name;

-- show the revenue greater than 2000
SELECT p.product_name , sum (o.quantity * p.price) AS revenue
FROM
products p JOIN orders o
on p.product_id = o.product_id 
GROUP BY p.product_name
having sum (o.quantity * p.price)  > 2000;

 -- show the customer who order only Fitness category product 
SELECT  o.customer_name 
FROM
products p JOIN orders o
on p.product_id = o.product_id 
where category = 'Fitness'
group by o.customer_name; 
INSERT INTO article_type (name) VALUES ('Clothing');
INSERT INTO article_type (name) VALUES ('Electronics');
INSERT INTO article_type (name) VALUES ('Books');
INSERT INTO article_type (name) VALUES ('Stationery');
INSERT INTO article_type (name) VALUES ('Homeware');
INSERT INTO article_type (name) VALUES ('Toys');
INSERT INTO article_type (name) VALUES ('Sports Equipment');
INSERT INTO article_type (name) VALUES ('Beauty Products');
INSERT INTO article_type (name)  VALUES ('Food');
INSERT INTO article_type (name) VALUES ('Beverages');

INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('T-Shirt', 15.99, (SELECT article_type_id FROM article_type WHERE name = 'Clothing'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Jeans', 39.99, (SELECT article_type_id FROM article_type WHERE name = 'Clothing'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Dress', 59.99, (SELECT article_type_id FROM article_type WHERE name = 'Clothing'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Sweatshirt', 24.99, (SELECT article_type_id FROM article_type WHERE name = 'Clothing'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Jacket', 79.99, (SELECT article_type_id FROM article_type WHERE name = 'Clothing'));

-- Electronics 

INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Smartphone', 499.99, (SELECT article_type_id FROM article_type WHERE name = 'Electronics'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Laptop', 799.99, (SELECT article_type_id FROM article_type WHERE name = 'Electronics'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Headphones', 79.99, (SELECT article_type_id FROM article_type WHERE name = 'Electronics'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Speaker', 99.99, (SELECT article_type_id FROM article_type WHERE name = 'Electronics'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Smartwatch', 199.99, (SELECT article_type_id FROM article_type WHERE name = 'Electronics'));

--Other Categories--

INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Novel', 12.99, (SELECT article_type_id FROM article_type WHERE name = 'Books'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Novel Pro', 102.99, (SELECT article_type_id FROM article_type WHERE name = 'Books'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Pen Set', 7.99, (SELECT article_type_id FROM article_type WHERE name = 'Stationery'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Pen Set Ultra', 70.99, (SELECT article_type_id FROM article_type WHERE name = 'Stationery'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Mug', 9.99, (SELECT article_type_id FROM article_type WHERE name = 'Homeware'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Action Figure', 19.99, (SELECT article_type_id FROM article_type WHERE name = 'Toys'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Football', 24.99, (SELECT article_type_id FROM article_type WHERE name = 'Sports Equipment'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Shampoo', 8.99, (SELECT article_type_id FROM article_type WHERE name = 'Beauty Products'));
INSERT INTO article (article_name, unit_price, article_type_id) VALUES ('Coffee Beans', 14.99, (SELECT article_type_id FROM article_type WHERE name = 'Food'));

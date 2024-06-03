CREATE DATABASE shop_exo;

\c shop_exo;

------------------------------------------------------------
-- Table: user
------------------------------------------------------------
CREATE TABLE "user"(
	user_id      SERIAL PRIMARY KEY ,
	first_name   VARCHAR (200) NOT NULL ,
	last_name    VARCHAR (200) NOT NULL 
);


------------------------------------------------------------
-- Table: payment_method
------------------------------------------------------------
CREATE TABLE "payment_method"(
	payment_method_id   SERIAL PRIMARY KEY NOT NULL ,
	label               VARCHAR (50) NOT NULL 
);


------------------------------------------------------------
-- Table: order
------------------------------------------------------------
CREATE TABLE "order"(
	order_id            SERIAL PRIMARY KEY NOT NULL ,
	order_datetime      TIMESTAMP  NOT NULL ,
	user_id             INT  NOT NULL ,
	payment_method_id   INT ,
	CONSTRAINT Order_user_FK FOREIGN KEY (user_id) REFERENCES "user"(user_id),
	CONSTRAINT Order_PaymentMethod_FK FOREIGN KEY (payment_method_id) REFERENCES "payment_method"(payment_method_id)
);


------------------------------------------------------------
-- Table: article_type
------------------------------------------------------------
CREATE TABLE "article_type"(
	article_type_id   SERIAL PRIMARY KEY NOT NULL ,
	name              VARCHAR (50) NOT NULL  
);


------------------------------------------------------------
-- Table: article
------------------------------------------------------------
CREATE TABLE "article"(
	article_id        SERIAL PRIMARY KEY NOT NULL ,
	article_name 	  VARCHAR(100) NOT NULL,
	unit_price        FLOAT  NOT NULL CHECK (unit_price > 0),
	article_type_id   INT  ,
	CONSTRAINT Article_ArticleType_FK FOREIGN KEY (article_type_id) REFERENCES "article_type"(article_type_id)
);


------------------------------------------------------------
-- Table: order_article
------------------------------------------------------------
CREATE TABLE "order_article"(
	article_id   INT PRIMARY KEY NOT NULL ,
	order_id     INT  NOT NULL ,
	quantity     INT  NOT NULL CHECK(quantity > 0) DEFAULT 1 ,
	CONSTRAINT order_article_Article_FK FOREIGN KEY (article_id) REFERENCES "article"(article_id),
	CONSTRAINT order_article_Order_FK FOREIGN KEY (order_id) REFERENCES "order"(order_id)
);




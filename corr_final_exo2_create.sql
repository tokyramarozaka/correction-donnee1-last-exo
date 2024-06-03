CREATE DATABASE social_exo;

\c social_exo;

------------------------------------------------------------
-- Table: user
------------------------------------------------------------
CREATE TABLE "user"(
	user_id      SERIAL PRIMARY KEY NOT NULL ,
	first_name   VARCHAR (100) NOT NULL ,
	last_name    VARCHAR (100) NOT NULL ,
	birthday     DATE  NOT NULL ,
	email        VARCHAR (100) NOT NULL  
);


------------------------------------------------------------
-- Table: post
------------------------------------------------------------
CREATE TABLE "post"(
	post_id        SERIAL PRIMARY KEY NOT NULL ,
	post_content   TEXT  NOT NULL ,
	user_id        INT  NOT NULL  ,
    CONSTRAINT post_user_FK FOREIGN KEY (user_id) REFERENCES "user"(user_id)
);




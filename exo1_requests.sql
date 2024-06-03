-- 2. Insérer Rakoto qui a acheté 5 yaourts avec Mvola
INSERT INTO "user" VALUES (default, 'Rakoto', 'Ipsum');
INSERT INTO "payment_method" VALUES (default, 'MVola');
INSERT INTO "article_type"(name) VALUES ('Dessert');
INSERT INTO "article"(article_name,unit_price) VALUES ('Yaourt',10000);
INSERT INTO "order"(order_datetime,user_id, payment_method_id) VALUES (now(), 1, 1);
INSERT INTO 
    "order_article"(article_id, order_id, quantity)
VALUES 
    (1, 1, 5);

-- 3.a Afficher le nombre d'article dans la base de données
SELECT count(*) as article_count FROM article;

-- 3.b Afficher pour chaque type d'article le prix minimal et maximal
SELECT 
    article_type.name, MIN(unit_price), MAX(unit_price)
FROM "article"
INNER JOIN "article_type"
ON "article".article_type_id = "article_type".article_type_id
GROUP BY "article_type".name;

-- 3.c Commande de Rakoto 
SELECT 
    "order".order_id, "order".order_datetime, SUM(unit_price * quantity)
FROM "order"
INNER JOIN "order_article"
ON "order_article".order_id = "order".order_id 
INNER JOIN "article"
ON "order_article".article_id = "article".article_id
GROUP BY "order".order_id, "order".order_datetime;

-- 3.d Les produits qui se vendent bien
SELECT "article".article_name, SUM(quantity) as total
FROM "article"
INNER JOIN "order_article"
ON "order_article".article_id = "article".article_id
GROUP BY article_name
ORDER BY total DESC;

-- 3.e. Total des gains 
SELECT SUM(quantity * unit_price)
FROM "order_article" oa -- Utilisation d'alias pour ne pas avoir a ecrire tout le temps le nom de la table
INNER JOIN "article" a 
ON a.article_id = oa.article_id
INNER JOIN "order" o 
ON o.order_id = oa.order_id
WHERE EXTRACT(YEAR FROM order_datetime) = EXTRACT(YEAR FROM CURRENT_DATE);
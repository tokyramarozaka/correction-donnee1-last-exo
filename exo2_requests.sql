-- 1. Amélioration de la performance sur les SELECT sur first_name
CREATE INDEX idx_first_name ON "user"(first_name);

-- 2. Vue sur les utilisateurs
CREATE VIEW user_post_count AS 
SELECT 
    first_name, last_name, date_part('year', AGE(current_date, birthday)) AS age, email, count(*)
FROM "post"
INNER JOIN "user"
ON "user".user_id = "post".user_id
GROUP BY first_name, last_name, age, email;

-- 3. Requete sur la vue 
SELECT * FROM user_post_count WHERE age < 20 AND count > 0;
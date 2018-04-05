-- --CREATE TABLE IN DB
-- CREATE TABLE burgers (
--   id int NOT NULL AUTO_INCREMENT,
--   name VARCHAR(255) NOT NULL,
--   description VARCHAR(255),
--   price DOUBLE(40, 2) NOT NULL,
--   kcal int,
--   PRIMARY KEY (id)
-- );

-- -- ADD ITEM TO DB_TABLE
-- INSERT INTO burgers (
--   name,
--   description,
--   price,
--   kcal
-- ) VALUES (
--   "The BBQ Burger",
--   "Tasty meat with BBQ Sauce",
--   11.99,
--   2200
-- );

-- -- GET FROM DB_TABLE
-- SELECT * FROM burgers;

-- -- EDIT RECORD
-- UPDATE burgers SET
--   description = "Tasty meat with Pineapple!"
--   WHERE id = 1;

-- -- REMOVE RECORD
-- DELETE FROM burgers WHERE id = 1;

-- DROP TABLE burgers;

-- DROP TABLE users;

-- CREATE TABLE users (
--   id VARCHAR(255) NOT NULL,
--   name VARCHAR(255),
--   email VARCHAR(255) NOT NULL,
--   password VARCHAR(255) NOT NULL,
--   PRIMARY KEY (id),
--   UNIQUE KEY email (email)
-- )
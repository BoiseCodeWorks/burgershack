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

-- RELATIONSHIPS
-- CREATE TABLE orders (
--   id VARCHAR(255) NOT NULL,
--   userId VARCHAR(255) NOT NULL,
--   price DOUBLE(40, 2) NOT NULL,
--   INDEX userId (userId),
--   FOREIGN KEY (userId)
--     REFERENCES users(id)
--     ON DELETE CASCADE,
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE orderburgers (
--   id VARCHAR(255) NOT NULL,
--   orderId VARCHAR(255) NOT NULL,
--   burgerId int NOT NULL,
--   userId VARCHAR(255) NOT NULL,
--   quantity int NOT NULL,

--   PRIMARY KEY (id),
--   INDEX (orderId, burgerId),
--   INDEX (userId),

--   FOREIGN KEY (userId)
--     REFERENCES users(id)
--     ON DELETE CASCADE,

--   FOREIGN KEY (orderId)
--     REFERENCES orders(id)
--     ON DELETE CASCADE,

--   FOREIGN KEY (burgerId)
--     REFERENCES burgers(id)
--     ON DELETE CASCADE

-- );

-- INSERT INTO orders (
--   id,
--   userId,
--   price
-- ) VALUES (
--   "004",
--   "693310ce-2d82-4507-846d-e507328ee1fc",
--   33.99
-- );

-- SELECT * FROM burgers

-- INSERT INTO orderburgers (
--   id,
--   userId,
--   orderId,
--   burgerId,
--   quantity
-- ) VALUES (
--   "600",
--   "693310ce-2d82-4507-846d-e507328ee1fc",
--   "004",
--   1,
--   3
-- );


-- get all burgers where user id = 1
-- SELECT
--   u.name username,
--   u.email,
--   ob.burgerId,
--   ob.quantity,
--   ob.orderId,
--   b.name,
--   b.kcal
-- FROM orderburgers ob
-- JOIN users u ON u.id = ob.userId
-- JOIN burgers b ON b.id = ob.burgerId
-- WHERE userId = "693310ce-2d82-4507-846d-e507328ee1fc";

-- SELECT * FROM orderburgers

-- DELETE FROM users WHERE id = "a38cd655-ccfc-4b53-a11c-225aee7799b5"












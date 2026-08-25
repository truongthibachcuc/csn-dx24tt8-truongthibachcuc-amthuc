CREATE DATABASE IF NOT EXISTS db_amthuc_nambo CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_amthuc_nambo;
CREATE TABLE locations (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255));
CREATE TABLE categories (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255));
CREATE TABLE dishes (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(255), location_id INT, category_id INT, ingredients TEXT, recipe TEXT);
INSERT INTO locations (name) VALUES ('Tây Ninh'), ('Bến Tre'), ('Cần Thơ');
INSERT INTO categories (name) VALUES ('Món nước'), ('Món bánh'), ('Món cuốn');
INSERT INTO dishes (name, location_id, category_id, ingredients, recipe) VALUES ('Bánh canh Trảng Bàng', 1, 1, 'Bánh canh, thịt heo, nước lèo', 'Hầm xương 2 tiếng...');

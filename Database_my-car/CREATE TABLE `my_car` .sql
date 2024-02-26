-- Створити таблицю car_brands - в якій буде описано бренди всіх авто (id, title)
CREATE TABLE `my_car` .car_brands ( 
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
-- Створити таблицю car_models - в якій будуть описані моделі авто (id, carBrandId, title)
CREATE TABLE `my_car` .car_models (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carBrandId INT,
    title VARCHAR(255) NOT NULL,
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id)
);
-- Створити таблицю users - в якій будуть дані про користувача (id, firstName, lastName, email, password)
CREATE TABLE `my_car` .users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL CHECK (email LIKE '%@%.%'),
    password VARCHAR(255) NOT NULL );
-- Створити таблицю cars - в якій будуть дані про користувачів та їх машини (id, userId, carBrandId, carModelId, mileage, initialMilleage)
CREATE TABLE `my_car` .cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    userId INT NOT NULL,
    carBrandId INT NOT NULL,
    carModelId INT NOT NULL,
    mileage INT,
    initialMileage INT,
    FOREIGN KEY (userId) REFERENCES users(id),
    FOREIGN KEY (carBrandId) REFERENCES car_brands(id),
    FOREIGN KEY (carModelId) REFERENCES car_models(id)
);

-- Заповнити всі таблиці даними
INSERT INTO `my_car`.`car_brands` (title) VALUES
('Audi'),
('BMW'),
('Ford'),
('Porsche'),
('Fiat');


INSERT INTO `my_car`.car_models (carBrandId, title) VALUES
(1, 'TT'),
(1, 'R8'),
(1, 'Q7'),
(1, 'A6'),
(1, 'A8'),
(2, '3'),
(2, '5'),
(2, 'X5'),
(3, 'Fiesta'),
(4, '911'),
(5, 'fff');


INSERT INTO `my_car`.users (firstName, lastName, email, password) VALUES
  ('John', 'Doe', 'john@example.com', 'password123'),
  ('Jane', 'Smith', 'jane@example.com', 'password456'),
  ('Alice', 'Johnson', 'alice@example.com', 'password789'),
  ('Bob', 'Williams', 'bob@example.com', 'passwordABC');


INSERT INTO `my_car` .cars (userId, carBrandId, carModelId, mileage, initialMileage) VALUES
(1, 1, 1, 1000, 950),
(2, 3, 9, 850, 800),
(3, 4, 10, 2000, 1950),
(4, 2, 7, 1500, 1400);







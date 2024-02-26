-- Знайти власників у яких у імені є послідовність букв "am";
USE my_car;
SELECT firstName FROM users
WHERE firstName LIKE '%am%';

-- Знайти найбільшу витрату серед Audi;
USE my_car;
SELECT MAX(cars.mileage) AS max_mileage
FROM cars
JOIN car_brands ON cars.carBrandId = car_brands.id
WHERE car_brands.title = 'Audi';

-- Знайти кількість моделей у брендів AUDI та BMW. Вивести стовпчики count_models (кількість моделей) та car_id (id бренду)
USE my_car;
SELECT
    COUNT(car_models.id) AS count_models,
    car_brands.id AS car_id
FROM
    car_models
JOIN car_brands ON car_models.carBrandId = car_brands.id
WHERE
    car_brands.title IN ('Audi', 'BMW')
GROUP BY
    car_brands.id;

-- Знайдіть кількість власників за марками та моделями автомобілів. Вивести три стовпчики car_model, car_barnd і user_count
USE my_car;
SELECT
    car_models.title AS car_model,
    car_brands.title AS car_brand,
   COUNT(cars.userId) AS user_count
FROM
    cars
JOIN car_models ON cars.carModelId = car_models.id
JOIN car_brands ON cars.carBrandId = car_brands.id
GROUP BY
    car_models.title, car_brands.title;

-- Знайти імена юзерів, у яких є машини;
USE my_car;
SELECT
    users.firstName,
    users.lastName
FROM
    users
JOIN my_car.cars ON users.id = cars.userId
GROUP BY
    users.firstName, users.lastName;

use car;
describe car_table;
select distinct(transmission) from car_table;
set sql_safe_updates=0;
update car_table set transmission='automatic' where transmission=' Automatic';
select distinct(transmission) from car_table;
update car_table set transmission='manual' where transmission=' Manual';
select fuel,count(*) as cnt from car_table group by fuel;
SELECT fuel_type, COUNT(car_id) AS num_cars
FROM cars
GROUP BY fuel_type;
SELECT city, COUNT(order_id) AS total_sales
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY city
ORDER BY total_sales DESC
LIMIT 5;
SELECT car_model, variant, COUNT(car_id) AS num_cars
FROM cars
GROUP BY car_model, variant;
SELECT region, COUNT(order_id) AS total_sales
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY region;
SELECT color, COUNT(car_id) AS num_cars
FROM car
GROUP BY color
ORDER BY num_cars DESC;
SELECT car_name, car_model, mileage
FROM cars
ORDER BY mileage DESC
LIMIT 10;












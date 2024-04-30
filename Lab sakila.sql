-- 1. Mostrar todas las tablas disponibles en la base de datos de Sakila.
SHOW TABLES;
-- 2. Recupere todos los datos de las tablas (actor, film,customer)
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3. Recupere las siguientes columnas de sus respectivas tablas:
-- 3.1 Títulos de todas las películas de la tabla film
SELECT title FROM film;
-- 3.2 Lista de idiomas utilizados en las películas, con la columna con alias de la tabla language language
SELECT language_id, name FROM language;
-- 3.3 Lista de nombres de todos los empleados de la tabla staff
SELECT first_name, last_name FROM staff;
-- 4. Recupere los años de lanzamiento únicos.
SELECT DISTINCT date(year) FROM film;
-- 5. Recuento de registros para obtener información de la base de datos:
-- 5.1 Determinar el número de tiendas que tiene la empresa.
SELECT SUM(store_id) FROM store;
-- 5.2 Determinar el número de empleados que tiene la empresa.
SELECT SUM(staff_id) FROM staff;
-- 5.3 Determine cuántas películas están disponibles para alquilar y cuántas se han alquilado.
-- DISPONIBLES PARA ALQUILAR:
SELECT COUNT(*) AS film_available
FROM inventory
WHERE film_id NOT IN (SELECT inventory_id FROM rental); 
----------------------------------------------------------
-- ALQUILADAS:
SELECT COUNT(*) AS film_rented
FROM rental;
-- 5.4 Determinar el número de apellidos distintos de los actores en la base de datos.
SELECT COUNT( DISTINCT last_name) AS diff_last_name
FROM actor;
-- 6. Recupera las 10 películas más largas.
SELECT title, length
FROM FILM
ORDER BY length DESC
LIMIT 10;
-- 7. Utilice técnicas de filtrado para:
-- 7.1 Recupera a todos los actores con el nombre de pila "SCARLETT".
SELECT * FROM actor
WHERE first_name = 'SCARLETT'
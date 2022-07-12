-- write your queries here

--first--
SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.id;

--second--
SELECT first_name, last_name, COUNT(owner_id) 
FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY (first_name, last_name)
ORDER BY first_name ASC;

--third--
SELECT first_name, last_name, COUNT(owner_id) AS veh_count, ROUND(AVG(PRICE)) AS average_price
FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY (first_name, last_name)
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;
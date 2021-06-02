-- write your queries here

SELECT * FROM owners
    FULL JOIN vehicles
        ON owners.id = vehicles.owner_id;


--
SELECT o.first_name, o.last_name, COUNT(o.id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id ORDER BY COUNT(o.id);


--
SELECT o.first_name, o.last_name, ROUND(AVG(v.price)) as average_price, COUNT(*) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.id HAVING COUNT(*) > 1 AND AVG(v.price) > 10000 ORDER BY first_name DESC;
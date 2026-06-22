-- Criando Subqueries

SELECT * from payment
WHERE amount > (SELECT AVG(amount) FROM payment);


SELECT *
FROM payment
WHERE amount = (
	SELECT MAX(amount) 
	FROM payment 
    WHERE customer_id = 1
    );
    

SELECT *
FROM customer 
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
    HAVING COUNT(*) > 35);
    
    
SELECT *
FROM customer 
WHERE customer_id = ANY (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
    HAVING COUNT(*) > 35);
    
    
SELECT DISTINCT
	c.customer_id,
	c.first_name,
    c.last_name
FROM customer c
JOIN payment p 
ON c.customer_id = p.customer_id
WHERE p.amount > (SELECT AVG(amount) FROM payment);


SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_gasto
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING SUM(p.amount) > (
    SELECT AVG(total_por_cliente)
    FROM (
        SELECT SUM(amount) AS total_por_cliente
        FROM payment
        GROUP BY customer_id
    ) AS sub
);
















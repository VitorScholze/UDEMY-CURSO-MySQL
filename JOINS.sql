-- Juntando duas tabelas em que o customer id = payment id
SELECT * FROM customer JOIN payment ON
	customer.customer_id = payment.customer_id;

-- Usando JOIN com filtros, juntando chave primaria de customer com a estrageira de payment
SELECT
	c.customer_id, c.first_name, c.last_name, p.payment_id,
	p.amount FROM customer c JOIN payment p ON
	c.customer_id = p.customer_id;

-- Juntando 4 colunas de tabelas(ManyToMany)diferentes com o ID de uma tabela de acrodo com o ID estrangeiro
SELECT
    actor.actor_id,
    actor.first_name,
    film.film_id,
    film.title
FROM actor
JOIN film_actor
    ON actor.actor_id = film_actor.actor_id
JOIN film
    ON film_actor.film_id = film.film_id;
    
    
-- Utilizando dois JOINS
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    p.payment_id,
    p.amount,
    a.address
FROM customer c
JOIN payment p
    ON c.customer_id = p.customer_id
JOIN address a
    ON c.address_id = a.address_id;
    












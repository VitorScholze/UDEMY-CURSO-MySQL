-- Todas as vendas por cliente
CREATE VIEW vendas_por_cliente AS
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    p.amount
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY 
    c.customer_id,
    c.first_name,
    c.last_name;
    
-- Total gasto por cliente
CREATE VIEW total_gasto_por_cliente AS
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_gasto
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY 
    c.customer_id,
    c.first_name,
    c.last_name;
    
    
-- Quais Clientes mais gastaram
CREATE OR REPLACE VIEW clientes_mais_gastaram AS
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    p.amount
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
WHERE p.amount = (
    SELECT MAX(amount)
    FROM payment
);




  


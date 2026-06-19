SELECT * FROM payment;
-- Funções 

-- Valor maximo da coluna amount
SELECT MAX(amount) AS 'Menor Valor' FROM payment;

-- Valor minimo da coluna amount
SELECT MIN(amount) AS 'Maior Valor' FROM payment;

-- Calculando a media da coluna amount
SELECT AVG(amount) AS 'Media Valores' FROM payment;

-- Somando os valores de amount 
SELECT SUM(amount) AS 'Total Vendas' FROM payment;

-- Contando quantas vendas 
SELECT COUNT(amount) AS 'Numero de Vendas' FROM payment;


-- Somando todas as vendas que possui id acima de 10000
SELECT SUM(amount) FROM payment WHERE payment_id > 10000;


-- Verificando Soma e Quantidade das vendas do funcionario
SELECT 
	s.first_name AS 'Nome Funcionario',
	SUM(amount) AS 'Soma Valores',
	COUNT(amount) AS 'Quantidade Vendas'
FROM payment p 
JOIN staff s ON p.staff_id = s.staff_id
WHERE p.staff_id = 2;

-- Verificando quanto cada cliente ja gastou
SELECT 
	customer_id,
    SUM(amount) AS total
FROM payment
GROUP BY customer_id
ORDER BY total DESC;

-- Verificando dados dos clientes que compraram na loja 
SELECT 
	p.customer_id,
	c.first_name AS Nome,
    c.email AS Email,
    SUM(amount) AS total
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY customer_id
ORDER BY total DESC;


-- Verificando quem gastou mais de 150 (UTILIZANDO O HAVING) para ganhar uma promocao
SELECT 
	p.customer_id,
	c.first_name AS Nome,
    c.email AS Email,
    SUM(amount) AS total,
    COUNT(amount) AS compras
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
GROUP BY customer_id
HAVING total >= 150 AND compras >=35
ORDER BY total DESC









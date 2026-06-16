-- Utilizando o BETWEEN em consultas

-- Selecionando tabela payment em que o preço esta entre 1.99 e 3.99
SELECT * FROM payment WHERE amount BETWEEN 1.99 AND 3.99;

-- Selecionando os cliente que possuem id de 200 a 300
SELECT * FROM payment WHERE customer_id BETWEEN 200 AND 300;

-- Selecionando pagamentos entre datas
SELECT * FROM payment WHERE payment_date BETWEEN '2005-07-01' AND '2005-07-31';

-- Selecionando os autores com nome entre "B" e "D".
SELECT first_name, last_name FROM actor WHERE first_name BETWEEN 'B' AND 'D';
-- Selecionando todos os cliente que possuem store_id = 1 E estao ativos
SELECT * FROM customer WHERE store_id = 1 AND active = 1;

-- Selecionando todos os cliente que possuem store_id = 1 E estao inativos
SELECT * FROM customer WHERE store_id = 1 AND active = 0;

-- Selecionando todas as vendas do staff_id = 1 e que tenham valor igual a 1.99
SELECT * FROM payment WHERE staff_id = 1 AND amount = 1.99;

-- Selecionando todas as vendas do staff_id = 1,
-- que tenham valor igual a 0.99 e customer_id < 10
SELECT * FROM payment WHERE staff_id = 1 AND amount = 0.99 AND customer_id < 10;

-- Selecionando todas as vendas da tabela, tirando as vendas que tem staff_id = 1,
-- mas tenham valor igual a 0.99 e customer_id < 10
SELECT * FROM payment WHERE NOT staff_id = 1 AND amount = 0.99 AND customer_id < 10;

-- Selecionando todas as vendas da tabela, tirando as vendas que tem staff_id = 1,
-- e vendas que possuem amount = 0.99, mas que possuem o customer_id < 10
SELECT * FROM payment WHERE NOT staff_id = 1 AND NOT amount = 0.99 AND customer_id < 10;




SELECT * FROM payment;

-- Selecionando todos os dados da tabela payment que possui o amount = 0.99
SELECT * FROM payment WHERE amount = 0.99;

-- Selecionando todos os cliente que possuem pagamento mais caro ao mais barato
SELECT * FROM payment ORDER BY amount desc;

-- Selecionando todos os endereços que possuem distrito = Texas
SELECT * FROM address WHERE district = 'Texas';

-- Selecionando todos os enderecos que possuem o city_id 295
SELECT * FROM address WHERE city_id = 295;

-- Selecionando todos os enderecos da tabela menos os que possuem district = Texas
SELECT * FROM address WHERE district != 'Texas';


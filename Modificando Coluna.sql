-- 10% de desconto no valor amount
SELECT customer_id, amount, amount - (amount * 0.10) AS '10% discount' FROM payment 
WHERE customer_id = 1;

-- Aumento de 25% no valor amount
SELECT customer_id, amount, amount * 1.25 AS '25% increase' FROM payment;

-- Adicionando uma taxa de R$2,00 ao valor de pagamento
SELECT customer_id, amount, amount + 2.00 AS 'Taxa de R$ 2.00' FROM payment;

-- 50% do valor
SELECT customer_id, amount, amount - (amount * 0.50) AS '50% discount' FROM payment;

-- Calculando o valor em 3 parcelas
SELECT customer_id, amount, amount / 3 AS 'Valor em 3 Parcelas' FROM payment;

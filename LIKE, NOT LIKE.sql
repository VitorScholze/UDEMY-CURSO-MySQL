-- Buscando atores que o primeiro novo inicia com A
SELECT * FROM actor WHERE first_name LIKE 'J%';

-- Buscando atores que o ultimo nome termine com A
SELECT * FROM actor WHERE last_name LIKE '%A';

-- Buscando atores que possuem a letra I no primeiro nome
SELECT * FROM actor WHERE first_name LIKE '%I%';

-- Buscando atores que possuem a primeira letra do nome diferente de J
SELECT * FROM actor WHERE first_name NOT LIKE 'J%';

-- Buscando atores que nao possuem a letra A no primeiro nome
SELECT * FROM actor WHERE first_name NOT LIKE '%A%'
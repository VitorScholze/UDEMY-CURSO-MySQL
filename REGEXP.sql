-- REGULAR EXPRESSON(REGEXP)

-- Filtrando todos actors que possuem a letra A no first name
SELECT * FROM actor WHERE first_name REGEXP 'a';

-- Filtrando todos os actors que o first name inicia com a letra A
SELECT * FROM actor WHERE first_name REGEXP '^a';

-- Filtrando todos os actor que o first name que inicia com a letra A ou contem D 
SELECT * FROM actor WHERE first_name REGEXP '^a|d';

-- Filtrando todos os actor que possuem first name que inicia com A ,D ou R
SELECT * FROM actor WHERE first_name REGEXP '^a|^d|^r';

-- Filtrando todos os actors que possuem o first name iniciando com GE, GA ou EA
SELECT * FROM actor WHERE first_name REGEXP '^[ge]a';
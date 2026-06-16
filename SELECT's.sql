USE sakila;

-- Selecionar actor_id, first_name, last_name da tabela actor e ordernar por ordem alfabetica.
SELECT actor_id, first_name, last_name FROM actor ORDER BY first_name;

-- Selecionar staff que possui primeiro nome igual a Mike
SELECT * FROM sakila.staff WHERE first_nome = 'Mike';

-- Selecionar staff em que o first_name comeca com Mi;
SELECT * FROM sakila.staff WHERE first_name LIKE '%Mi%';

-- Selecionar todos os staffs que possuem address_ id maior que 3
SELECT * FROM staff WHERE address_id > 3;

-- Selecionar ator que possui id = 100
SELECT actor_id, first_name, last_name FROM actor WHERE actor_id = 100;

-- Lista 10 Primeiros registros:
SELECT actor_id , first_name, last_name FROM actor WHERE actor_id <= 10; 











SELECT * FROM address;

-- Selecionando enderecos dentro de Alberta e Texas
SELECT * FROM address WHERE district IN('Alberta', 'Texas');

-- Selecionando enderecos dentro de California e Texas mas que possuem city_id menor que 300
SELECT * FROM address WHERE district IN('California', 'Texas') AND city_id < 300;

-- Com o IN podemos adicionar multiplas entradas e filtrar utilizando o WHERE

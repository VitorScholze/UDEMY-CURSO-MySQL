USE carros;

-- Criando tabelas marcas
CREATE TABLE IF NOT EXISTS marcas(
	id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR(250) NOT NULL,
    PRIMARY KEY(id)
);

-- Adicionar uma coluna na tabela marca
ALTER TABLE marcas ADD origem VARCHAR(250);

-- Criando tabela inventario
CREATE TABLE inventario(
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(250) NOT NULL,
    transmissao VARCHAR(250) NOT NULL,
    motor VARCHAR(250) NOT NULL,
    combustivel VARCHAR(250) NOT NULL,
    marca_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (marcas_id) REFERENCES marca(id)
);

-- Criando tabela Cliente

CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    sobrenome VARCHAR(250) NOT NULL,
    endereco VARCHAR(250) NOT NULL,
    PRIMARY KEY(id)
);

    
    



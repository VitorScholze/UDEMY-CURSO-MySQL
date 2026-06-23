SELECT *  FROM carros.clientes;

INSERT INTO clientes(nome, sobrenome, endereco)
VALUES('Neymar', 'Junior', 'Rua 3'),
	  ('Lucas', 'Coelho', 'Rua 4'),
      ('Guilherme', 'Soares', 'Rua 5');
	
INSERT INTO marcas(nome_marca,origem)
VALUES ('Porsche', 'Alemanha'),
	   ('BMW', 'Alemanha'),
       ('Audi', 'Alemanha'),
       ('Ferrari','Italia'),
       ('Lamborghini', 'Italia');
       

INSERT INTO inventario(modelo, transmissao, motor, combustivel , marca_id )
VALUES('911 GT3', 'Automatica', '3.0 Aspirado', 'Podium', 1),
      ('M4 COMP', 'Automatica', '6 Cilindros Turbo', 'Podium', 2),
      ('R8', 'Automatica', 'V8 Turbo', 'Podium', 3),
      ('488 PISTA', 'Automatica', 'V8 Bi-Turbo', 'Podium', 4),
      ('Aventador SVJ', 'Automatica', 'V12 Aspirado', 'Podium', 5);



-- Práticas DML

CREATE DATABASE secao4;
USE secao4;

CREATE TABLE tipos_produto(
	codigo INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(30) NOT NULL,
	PRIMARY KEY (codigo)
);

CREATE TABLE produtos(
	codigo INT NOT NULL AUTO_INCREMENT,
	descricao VARCHAR(30) NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	codigo_tipo INT NOT NULL,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto (codigo)
);

INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('IMPRESSORA');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Latop', '1800', 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Imp. a Jato Tinta', '300', 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Imp Laser', '500', 2);

SELECT * FROM tipos_produto;
SELECT * FROM produtos;

-- UPDATE 

UPDATE tipos_produto SET descricao = 'COMPUTADOR' WHERE codigo  = 1;
UPDATE produtos SET descricao = 'Imp. Laser', preco ='500' WHERE codigo  = 4;

-- DELETE

DELETE FROM produtos WHERE codigo = 4;

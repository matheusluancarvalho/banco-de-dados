-- Práticas DQL

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

SELECT codigo, descricao FROM tipos_produto;
SELECT codigo, descricao, codigo_tipo  FROM produtos;

-- Alias
SELECT p.codigo AS 'Código', p.descricao AS descr, p.codigo_tipo AS ctp FROM produtos AS p;



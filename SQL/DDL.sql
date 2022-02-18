-- Práticas DDL

CREATE DATABASE meudb;

USE meudb;

CREATE TABLE pessoa(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO pessoa (nome) VALUES ('Matheus Carvalho');

SELECT * FROM pessoa;

-- ALTER 

ALTER TABLE pessoa ADD mes_nascimento INT NOT NULL;
ALTER TABLE pessoa ADD ano_nascimento INT;

-- DROP

DROP TABLE pessoa; 
DROP DATABASE meudb;
-- Práticas DTL

USE  secao4;
SELECT * FROM tipos_produto;

START TRANSACTION;
	INSERT INTO tipos_produto (descricao) VALUES ('Farmácia');
	INSERT INTO tipos_produto (descricao) VALUES ('Escritório');

-- COMMIT -> FINALIZA O COMANDO MAS NÃO VOLTA ATRÁS	
COMMIT;

-- ROLLBACK -> FINALIZA E PODE VOLTAR ATRÁS

ROLLBACK;
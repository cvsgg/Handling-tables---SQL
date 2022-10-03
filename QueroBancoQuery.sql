USE querobanco;
-- INSERE DADOS DA TABELA COMPRAS --
INSERT INTO compras(id, cliente_name, course_id, mensalidade) VALUES(23, 'João da Silva', 10, 119.90);
INSERT INTO compras(id, cliente_name, course_id, mensalidade) VALUES(24, 'Felipe Gomes', 13, 99.90);
INSERT INTO compras(id, cliente_name, course_id, mensalidade) VALUES(25, 'Roger Guedes', 10, 119.90);
INSERT INTO compras(id, cliente_name, course_id, mensalidade) VALUES(26, 'Carla Amorim', 12, 250.00);
INSERT INTO compras(id, cliente_name, course_id, mensalidade) VALUES(27, 'Eduardo Queiroz', 10, 119.90);
SELECT * from compras;

-- INSERE DADOS DA TABELA CURSOS --
INSERT INTO cursos(id, name, kind) VALUES(10, 'Ciência da Computação', 'Bacharelado');
INSERT INTO cursos(id, name, kind) VALUES(11, 'Análise e Desenvolvimento de Sistemas', 'Tecnólogo');
INSERT INTO cursos(id, name, kind) VALUES(12, 'Engenharia da Computação', 'Bacharelado');
INSERT INTO cursos(id, name, kind) VALUES(13, 'Ciência de Dados', 'Bacharelado');
SELECT * FROM cursos;

-- QUESTÃO 1 - RETORNA A SOMATORIA DAS COMPRAS POR CURSOS --
SELECT DISTINCT c.name, sum(co.mensalidade) somatoria_compras FROM cursos c
INNER JOIN compras co ON c.id=co.course_id 
GROUP BY c.name;

-- QUESTÃO 2 - RETORNA COMPRAS ACIMA DE R$110,00 --
SELECT * FROM compras WHERE mensalidade > 110;

-- QUESTÃO 3 - RETORNA OS CURSOS QUE NÃO CONTÉM NA TABELA COMPRAS --
SELECT * FROM cursos WHERE id NOT IN (SELECT course_id FROM compras);
-- 8)Crie uma procedure para encontrar o valor total de vendas de um autor específico. 
-- A procedure deve receber o id do autor e realizar a consulta para esse autor. Descreva 
-- também o comando que executa a procedure.

DELIMITER $$
CREATE PROCEDURE total_venda(idautor int)
BEGIN 
SELECT a.nome, SUM(l.preco*iv.quantidade) as total
FROM autor a
JOIN escreve e on a.idautor = e.autor_idautor
JOIN livro l on e.livro_idlivro = l.idlivro
JOIN itemvenda iv on l.idlivro = iv.livro_idlivro
Where a.idautor = idautor
GROUP BY a.nome;
END$$

CALL total_venda(3);

DROP PROCEDURE IF EXISTS total_vendas;
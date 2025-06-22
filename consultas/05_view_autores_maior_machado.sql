-- 5) Crie uma view para obter o valor total das vendas de cada autor, 
-- mostrando apenas os autores com vendas acima do valor total vendido pelo autor 
-- Machado de Assis em Abril de 2023:

CREATE VIEW venda_maior_machado AS
SELECT a.nome, SUM(l.preco*iv.quantidade) as Valor_total
FROM autor a 
JOIN escreve e on a.idautor = e.autor_idautor
JOIN livro l on e.livro_idlivro = l.idlivro
JOIN itemVenda iv on l.idlivro = iv.livro_idlivro
JOIN venda v on iv.venda_idvenda = v.idvenda
GROUP BY nome
HAVING Valor_total > (SELECT SUM(l.preco*iv.quantidade) as Valor_total
					FROM autor a 
					JOIN escreve e on a.idautor = e.autor_idautor
					JOIN livro l on e.livro_idlivro = l.idlivro
					JOIN itemVenda iv on l.idlivro = iv.livro_idlivro
					JOIN venda v on iv.venda_idvenda = v.idvenda
WHERE a.nome = 'Machado de Assis' AND v.data BETWEEN '2014-06-23' AND '2014-09-20');

SELECT * FROM venda_maior_machado;
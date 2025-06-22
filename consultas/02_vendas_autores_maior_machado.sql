-- 2)Crie uma consulta para obter o valor total das vendas de cada autor, mostrando 
-- apenas os autores com vendas acima do valor total vendido pelo autor Machado de 
-- Assis em Abril de 2023:

SELECT  a.nome, SUM(l.preco*iv.quantidade) as Total_Vendas
FROM autor a
JOIN escreve e on a.idautor = e.autor_idautor
JOIN livro l on e.livro_idlivro = l.idlivro
JOIN itemVenda iv on l.idlivro = iv.livro_idlivro
JOIN venda v on iv.venda_idvenda = v.idvenda
GROUP BY a.nome
HAVING Total_Vendas > (SELECT SUM(l.preco*iv.quantidade) as TOTAL
						FROM autor a 
						JOIN escreve e on a.idautor = e.autor_idautor
						JOIN livro l on e.livro_idlivro = l.idlivro
						JOIN itemVenda iv on l.idlivro = iv.livro_idlivro
						JOIN venda v on iv.venda_idvenda = v.idvenda
						WHERE a.nome = 'Machado de Assis' and v.data between '2014-06-23' AND '2014-09-20');

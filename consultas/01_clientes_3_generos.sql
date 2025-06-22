--  1)Crie uma consulta para encontrar os clientes que compraram livros de pelo menos 
--    3 gêneros diferentes. 
SELECT c.nome, COUNT(DISTINCT g.idgenero) AS total_generos
FROM cliente c
JOIN venda v on v.cliente_idcliente = c.idcliente
JOIN itemVenda iv on iv.venda_idvenda = v.idvenda
JOIN livro l on l.idlivro = iv.livro_idlivro
JOIN genero g on g.idgenero = l.genero_idgenero
GROUP BY c.idcliente, c.nome
HAVING COUNT(DISTINCT g.idgenero) >= 3;

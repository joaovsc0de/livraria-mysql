-- 4) Crie uma view para encontrar os clientes que compraram livros de pelo menos 
   -- 3 gêneros diferentes. Descreva também o comando que executa a view.
   
   CREATE VIEW compra_3_generos AS
   SELECT c.nome, COUNT(DISTINCT g.idgenero) as Total_Generos
   FROM cliente c
   JOIN venda v on c.idcliente = v.cliente_idcliente
   JOIN itemvenda iv on v.idvenda = iv.venda_idvenda
   JOIN livro l on iv.livro_idlivro = l.idlivro
   JOIN genero g on l.genero_idgenero = g.idgenero
   GROUP BY nome
   HAVING Total_Generos >=3;
   
SELECT * FROM compra_3_generos;
DROP view compra_3_generos;
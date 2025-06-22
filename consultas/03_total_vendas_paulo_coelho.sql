-- 3) Crie uma consulta para encontrar o valor total de vendas do autor Paulo Coelho. 

   SELECT a.nome, SUM(l.preco*iv.quantidade) as VALOR_TOTAL
   FROM autor a
   JOIN escreve e on a.idautor = e.autor_idautor
   JOIN livro l on e.livro_idlivro = l.idlivro
   JOIN itemvenda iv on l.idlivro = iv.livro_idlivro
   WHERE a.nome like 'Paulo Coelho'
   GROUP BY nome;
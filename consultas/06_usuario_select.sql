-- 6)Crie um usuário com acesso somente de consulta aos dados de livros e gênero.
CREATE USER vladimi IDENTIFIED BY '12345';
GRANT SELECT ON livraria.livro TO vladimir;
GRANT SELECT ON livraria.genero TO vladimir;
FLUSH PRIVILEGES;

 SELECT User, Host FROM mysql.user;
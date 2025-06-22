-- 9) Crie uma trigger que registre na tabela LogItemVendaExclusao as exclusões feitas na 
-- tabela itemvenda. Ao ser feita a exclusão de um itemvenda um novo registro deve ser gerado 
-- na tabela LogItemVendaExclusao com as devidas informações.

CREATE TABLE LogItemVendaExclusao(
id INT AUTO_INCREMENT PRIMARY KEY,
id_itemvenda INT,
livro_idlivro INT,
quantidade INT,
preco DECIMAL(10,2),
data_exclusao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
usuario VARCHAR(50)
);

ALTER TABLE LogItemVendaExclusao CHANGE id_itemvenda venda_idvenda INT;

DELIMITER $$

DELIMITER $$

CREATE TRIGGER trg_after_delete_itemvenda
AFTER DELETE ON itemvenda
FOR EACH ROW
BEGIN
    INSERT INTO LogItemVendaExclusao (venda_idvenda, livro_idlivro, quantidade, data_exclusao, usuario)
    VALUES (OLD.venda_idvenda, OLD.livro_idlivro, OLD.quantidade, NOW(), USER());
END$$

DELIMITER ;

DROP trigger trg_after_delete_itemvenda;

-- 10)Criar uma trigger para resgitrar o preço antigo e o preço novo
-- na tabela histórico_preco


CREATE TABLE historico_preco(
id INT AUTO_INCREMENT PRIMARY KEY,
idlivro INT,
data DATETIME,
valor_antigo DECIMAL(10, 2),
valor_novo DECIMAL(10, 2)
);

DELIMITER $$

CREATE TRIGGER trg_update_preco 
AFTER UPDATE ON livro
FOR EACH ROW
BEGIN
IF NEW.preco <> old.preco THEN
		INSERT INTO historico_preco(idlivro, data, valor_antigo, valor_novo)
        VALUES (NEW.idlivro, NOW(), OLD.preco, NEW.preco);
END IF;

END$$
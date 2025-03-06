DELIMITER $$

-- Atualização da nota do freelancer

CREATE TRIGGER atualizar_nota
BEFORE INSERT ON projeto -- A trigger é ativada antes da inserção de um novo projeto
FOR EACH ROW
BEGIN
    DECLARE nova_media DECIMAL(2,1); -- Variável para armazenar a nova média de notas

    -- Calcula a nova média das notas do freelancer com base nos projetos existentes
    SELECT AVG(nota) INTO nova_media
    FROM projeto
    WHERE freelancer_id = NEW.freelancer_id;

    -- Atualiza a coluna 'avaliacao' da tabela 'freelancer' com a nova média calculada
    UPDATE freelancer
    SET avaliacao = nova_media
    WHERE freelancer_id = NEW.freelancer_id;
END$$

DELIMITER ;

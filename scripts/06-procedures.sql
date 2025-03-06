DELIMITER $$

-- Criação da procedure 'consultar_informacoes_freelancer'

CREATE PROCEDURE consultar_informacoes_freelancer(IN freelancer_id INT)
BEGIN
    -- Seleciona informações do freelancer e seus dados associados
    SELECT 
        u.nome, -- Nome do usuário
        f.portfolio, -- Link ou descrição do portfólio do freelancer
        f.avaliacao, -- Avaliação do freelancer (pode ser uma média de estrelas, por exemplo)
        f.experiencia_profissional, -- Experiência profissional do freelancer
        f.localizacao, -- Localização do freelancer
        s.nivel_seguranca, -- Nível de segurança do usuário
        s.status_seguranca, -- Status de segurança do usuário
        
        -- Seleciona todas as habilidades do freelancer
        (SELECT GROUP_CONCAT(DISTINCT h.competencia SEPARATOR ', ') 
         FROM freelancer_habilidade AS fh
         INNER JOIN habilidade AS h ON fh.habilidade_id = h.id
         WHERE fh.freelancer_id = f.id) AS habilidades,

        -- Seleciona todos os IDs dos projetos do freelancer
        (SELECT GROUP_CONCAT(DISTINCT p.id SEPARATOR ', ') 
         FROM projeto AS p
         WHERE p.freelancer_id = f.id) AS projetos

    FROM usuario AS u
    INNER JOIN freelancer AS f ON u.id = f.usuario_id -- Relaciona a tabela 'usuario' com 'freelancer'
    INNER JOIN seguranca AS s ON u.id = s.usuario_id -- Relaciona a tabela 'usuario' com 'seguranca'
    WHERE u.id = freelancer_id -- Filtra pelo ID do freelancer informado na chamada da procedure
    LIMIT 0, 1000; -- Limita o número de registros retornados

END$$

DELIMITER ;

DELIMITER $$

-- Autenticação das informações do usuário

CREATE PROCEDURE consultar_credenciais(IN email_usuario VARCHAR(50))
BEGIN
    DECLARE usuario_existe INT; -- Variável para armazenar se o usuário existe

    -- Verifica se o e-mail existe na tabela 'usuario'
    SELECT COUNT(*) INTO usuario_existe FROM usuario WHERE email = email_usuario;

    IF usuario_existe > 0 THEN
        -- Se o e-mail existir, retorna a senha e o tipo de usuário
        SELECT senha, tipo_usuario FROM usuario WHERE email = email_usuario;
    ELSE
        -- Se o e-mail não existir, gera um erro com a mensagem apropriada
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Usuário não encontrado!';
    END IF;
END$$

DELIMITER ;

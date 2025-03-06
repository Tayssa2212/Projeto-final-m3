-- Inserindo usuários
INSERT INTO usuario (nome, email, senha, tipo_usuario) VALUES
('Carlos Silva', 'carlos.silva@email.com', 'senha123', 'freelancer'),
('Maria Oliveira', 'maria.oliveira@email.com', 'senha123', 'contratante'),
('José Souza', 'jose.souza@email.com', 'senha123', 'freelancer'),
('Ana Costa', 'ana.costa@email.com', 'senha123', 'freelancer'),
('Ricardo Martins', 'ricardo.martins@email.com', 'senha123', 'contratante'),
('Lucas Pereira', 'lucas.pereira@email.com', 'senha123', 'freelancer'),
('Fernanda Lima', 'fernanda.lima@email.com', 'senha123', 'contratante'),
('Eduardo Rocha', 'eduardo.rocha@email.com', 'senha123', 'freelancer'),
('Patricia Gomes', 'patricia.gomes@email.com', 'senha123', 'freelancer'),
('Juliana Silva', 'juliana.silva@email.com', 'senha123', 'contratante');

-- Inserindo freelancers
INSERT INTO freelancer (usuario_id, portfolio, avaliacao, experiencia_profissional, localizacao) VALUES
(1, 'portfolio_link_1', 4.5, '5 anos de experiência em design gráfico', 'São Paulo'),
(2, 'portfolio_link_2', 4.0, '3 anos de experiência em desenvolvimento web', 'Rio de Janeiro'),
(3, 'portfolio_link_3', 3.8, '2 anos de experiência em marketing digital', 'Belo Horizonte'),
(4, 'portfolio_link_4', 4.7, '7 anos de experiência em edição de vídeo', 'Curitiba'),
(5, 'portfolio_link_5', 4.3, '4 anos de experiência em programação', 'Porto Alegre'),
(6, 'portfolio_link_6', 3.5, '3 anos de experiência em design gráfico', 'São Paulo'),
(7, 'portfolio_link_7', 4.2, '6 anos de experiência em web design', 'Rio de Janeiro'),
(8, 'portfolio_link_8', 4.6, '8 anos de experiência em fotografia', 'Brasília'),
(9, 'portfolio_link_9', 4.0, '4 anos de experiência em publicidade', 'Salvador'),
(10, 'portfolio_link_10', 4.4, '5 anos de experiência em branding', 'Fortaleza');

-- Inserindo habilidades
INSERT INTO habilidade (competencia) VALUES
('Design Gráfico'),
('Desenvolvimento Web'),
('SEO'),
('Marketing Digital'),
('Edição de Vídeo'),
('Fotografia'),
('Copywriting'),
('Branding'),
('Gestão de Projetos'),
('UI/UX Design');

-- Associando freelancers com habilidades
INSERT INTO freelancer_habilidade (freelancer_id, habilidade_id, nivel) VALUES
(1, 1, 'Avançado'),
(2, 2, 'Intermediário'),
(3, 4, 'Básico'),
(4, 5, 'Avançado'),
(5, 2, 'Avançado'),
(6, 1, 'Intermediário'),
(7, 2, 'Avançado'),
(8, 6, 'Especialista'),
(9, 7, 'Avançado'),
(10, 8, 'Avançado');

-- Inserindo contratantes
INSERT INTO contratante (usuario_id, empresa, cnpj) VALUES
(1, 'Tech Solutions', '12345678000195'),
(2, 'Digital Creators', '23456789000196'),
(3, 'WebDesign Ltda', '34567890000197'),
(4, 'FotoArt', '45678901000198'),
(5, 'Media Marketing', '56789012000199'),
(6, 'DevStudio', '67890123000120'),
(7, 'WebSolutions', '78901234000121'),
(8, 'FotoPro', '89012345000122'),
(9, 'AdvertiseMe', '90123456000123'),
(10, 'Branding Masters', '01234567000124');

-- Inserindo segurança
INSERT INTO seguranca (nivel_seguranca, status_seguranca, usuario_id) VALUES
('Ouro', 'Verificado', 1),
('Prata', 'Pendente', 2),
('Bronze', 'Não verificado', 3),
('Ouro', 'Verificado', 4),
('Prata', 'Pendente', 5),
('Bronze', 'Não verificado', 6),
('Ouro', 'Verificado', 7),
('Prata', 'Pendente', 8),
('Bronze', 'Não verificado', 9),
('Ouro', 'Verificado', 10);

-- Inserindo projetos
INSERT INTO projeto (titulo, descricao, nota, status_projeto, freelancer_id, contratante_id) VALUES
('Desenvolvimento de Logotipo', 'Criação de logotipo exclusivo para a empresa', 4.7, 'Concluído', 1, 2),
('Criação de Website', 'Desenvolvimento de um website completo', 4.5, 'Em desenvolvimento', 2, 3),
('Campanha Publicitária', 'Gestão de anúncios para lançamento de produto', 4.3, 'Concluído', 3, 4),
('Vídeo Institucional', 'Criação de vídeo institucional para empresa', 4.6, 'Em desenvolvimento', 4, 5),
('Software de Gestão', 'Desenvolvimento de um software personalizado para gestão interna', 4.8, 'Em desenvolvimento', 5, 6),
('Identidade Visual', 'Criação de identidade visual para marca', 4.4, 'Concluído', 6, 7),
('Fotografia Corporativa', 'Realização de ensaio fotográfico para empresa', 4.7, 'Em desenvolvimento', 7, 8),
('Redação Publicitária', 'Criação de conteúdo publicitário para website', 4.3, 'Concluído', 8, 9),
('Design de Interface', 'Desenvolvimento de interface para aplicativo', 4.5, 'Em desenvolvimento', 9, 10),
('Consultoria de Branding', 'Desenvolvimento de estratégias para marca', 4.6, 'Concluído', 10, 1);

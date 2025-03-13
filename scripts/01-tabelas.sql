CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    senha char(60) NOT NULL,
    tipo_usuario ENUM('freelancer', 'contratante') NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE freelancer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT UNIQUE NOT NULL,
    portfolio TEXT,
    avaliacao DECIMAL(3,2), -- Média de avaliações de clientes anteriores
    experiencia_profissional TEXT,
    localizacao VARCHAR(100),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE habilidade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    competencia VARCHAR(50),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE freelancer_habilidade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    freelancer_id INT NOT NULL,
    habilidade_id INT NOT NULL,
    nivel ENUM('Básico', 'Intermediário', 'Avançado', 'Especialista') DEFAULT 'Básico' NOT NULL -- Nível de proficiência
);

CREATE TABLE contratante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT UNIQUE NOT NULL,
    empresa VARCHAR(80),
    cnpj CHAR(14) NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE pagamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    metodo_pagamento ENUM('Pix', 'Transferência bancária', 'Boleto', 'Cartão de Crédito') NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status_pagamento ENUM('Em andamento', 'Concluído') NOT NULL,
    usuario_id INT NOT NULL,
    projeto_id INT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE seguranca (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nivel_seguranca ENUM('Ouro', 'Prata', 'Bronze') NOT NULL,
    status_seguranca ENUM('Verificado', 'Pendente', 'Não verificado') NOT NULL,
    usuario_id INT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE servico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo varchar(50) NOT NULL,
    descricao TEXT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    status_servico ENUM('Em andamento', 'Concluído') NOT NULL,
    usuario_id INT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE avaliacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    comentario TEXT NOT NULL,
    status_avaliacao ENUM('Em análise', 'Aprovado') NOT NULL,
    projeto_id INT NOT NULL,
    usuario_id INT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE feedback (
    id INT PRIMARY KEY AUTO_INCREMENT,
    comentario TEXT NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    status_feedback ENUM('Aberto', 'Pendente') NOT NULL,
    usuario_id INT NOT NULL,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT,
    id_cliente INT,
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES usuarios(id) ON DELETE CASCADE
);
);

use pagamentosecurity;

SHOW TABLES;

SELECT * FROM usuario;
SELECT * FROM pagamento;
SELECT * FROM seguranca;

INSERT INTO usuario (Nome, Email, Senha, Tipo) VALUES
('otavio', 'otavio@email.com', 'senha123w', 'Cliente'),
('Marissa', 'marissa@email.com', 'senha456q', 'Freelancer'),
('Carlos Mendes', 'carlos@email.com', 'senha789q', 'Cliente');

INSERT INTO pagamento (titulo, descricao, usuario_id) VALUES
('Compra de livro', 'compra de um livro online', 1),
('Assinatura mensal', 'serviço', 2),
('Compra de software', 'Licença anual de software', 14);

SELECT pagamento.id, pagamento.titulo, usuario.nome 
FROM pagamento 
JOIN usuario ON pagamento.usuario_id = usuario.id;

INSERT INTO seguranca (nivel, criado_em, atualizado_em, status, usuario_id) VALUES
('Alto', NOW(), NOW(), 'Ativo', 1),
('Médio', NOW(), NOW(), 'Inativo', 2),
('Baixo', NOW(), NOW(), 'Ativo', 14);

SELECT * FROM usuario;
SELECT * FROM pagamento;
SELECT * FROM seguranca;

SELECT seguranca.id, usuario.nome, seguranca.nivel, seguranca.status, seguranca.criado_em
FROM seguranca
JOIN usuario ON seguranca.usuario_id = usuario.id
ORDER BY seguranca.criado_em DESC;
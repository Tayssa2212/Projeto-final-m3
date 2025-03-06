-- Definindo as chaves estrangeiras

-- Tabela de freelancer

ALTER TABLE freelancer
ADD CONSTRAINT fk_freelancer_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE;

-- Tabela contratante

ALTER TABLE contratante
ADD CONSTRAINT fk_contratante_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE;

-- Tabela de pagamento

ALTER TABLE pagamento 
ADD CONSTRAINT fk_pagamento_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE,
ADD CONSTRAINT fk_pagamento_projeto FOREIGN KEY (projeto_id) REFERENCES projeto(id) ON DELETE CASCADE;

-- Tabela de segurança

ALTER TABLE seguranca 
ADD CONSTRAINT fk_seguranca_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE;

-- Tabela de serviço

ALTER TABLE servico 
ADD CONSTRAINT fk_servico_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE;

-- Tabela de availiação

ALTER TABLE avaliacao 
ADD CONSTRAINT fk_avaliacao_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE,
ADD CONSTRAINT fk_avaliacao_projeto FOREIGN KEY (projeto_id) REFERENCES projeto(id) ON DELETE CASCADE;

-- Tabela de feedback

ALTER TABLE feedback 
ADD CONSTRAINT fk_feedback_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE;

-- Tabela de projeto

ALTER TABLE projeto
ADD CONSTRAINT fk_projeto_freelancer FOREIGN KEY (freelancer_id) REFERENCES freelancer(id) ON DELETE CASCADE,
ADD CONSTRAINT fk_projeto_contratante FOREIGN KEY (contratante_id) REFERENCES contratante(id) ON DELETE CASCADE;
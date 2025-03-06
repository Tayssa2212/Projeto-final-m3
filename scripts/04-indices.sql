-- Tabela usuario

-- Index do atributo 'email'
CREATE INDEX idx_email  ON usuario(email);

-- Tabela freelancer

-- Index do atributo 'usuario_id'
CREATE INDEX idx_usuario_id_freelancer ON pagamento(usuario_id);

-- Tabela freelancer_habilidade

-- Index do atributo 'freelancer_id'
CREATE INDEX idx_freelancer_habilidade_freelancer_id ON freelancer_habilidade(freelancer_id);

-- Index do atributo 'habilidade_id'
CREATE INDEX idx_freelancer_habilidade_habilidade_id ON freelancer_habilidade(habilidade_id);

-- Tabela pagamento

-- Index do atributo 'usuario_id'
CREATE INDEX idx_usuario_id_pag ON pagamento(usuario_id);

-- Index do atributo 'projeto_id'
CREATE INDEX idx_projeto_id ON pagamento(projeto_id);

-- Index do atributo 'status_pagamento'
CREATE INDEX idx_status_pagamento ON pagamento(status_pagamento);

-- Tabela segurança

-- Index do atributo 'usuario_id'
CREATE INDEX idx_usuario_id_seg ON seguranca(usuario_id);

-- Tabela servico

-- Index do atributo 'usuario_id'
CREATE INDEX idx_usuario_id_servico ON servico(usuario_id);

-- Tabela avaliacao

-- Index do atributo 'projeto_id'
CREATE INDEX idx_projeto_id ON avaliacao(projeto_id);

-- Index do atributo 'usuario_id'
CREATE INDEX idx_usuario_id_avaliacao ON avaliacao(usuario_id);

-- Index do atributo 'status_avaliacao'
CREATE INDEX idx_status_avaliacao ON avaliacao(status_avaliacao);

-- Tabela feedback

-- Index do atributo 'usuario_id'
CREATE INDEX idx_usuario_id_feedback ON feedback(usuario_id);

-- Index do atributo 'status_feedback'
CREATE INDEX idx_status_feedback ON feedback(status_feedback);

-- Tabela projeto

-- Index do atributo 'freelancer_id'
CREATE INDEX idx_freelancer_id_projeto ON projeto(freelancer_id);

-- Index do atributo 'contratante_id'
CREATE INDEX idx_contratante_id_projeto ON projeto(contratante_id);
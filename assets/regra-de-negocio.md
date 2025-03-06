# Regras de Negócio - Plataforma de Freelance

## 🏗 1. Cadastro de Usuários
### 📌 Regras:
✅ Um usuário pode se cadastrar como freelancer ou cliente.

✅ O e-mail deve ser único na base de dados.

✅ A senha deve ter mínimo de 8 caracteres e ser armazenada com hash para segurança.

✅ O usuário pode editar seu perfil, mas não pode alterar seu tipo (freelancer/cliente) após cadastro.

✅ Freelancers devem preencher categorias de serviço e podem adicionar um portfólio.

## 🔍 2. Publicação de Serviços (Freelancers)
### 📌 Regras:
✅ Apenas usuários do tipo freelancer podem criar serviços.

✅ Cada serviço deve ter um título, descrição, categoria e preço definido.

✅ O freelancer pode editar ou excluir seus serviços a qualquer momento, desde que não esteja em um projeto ativo.

✅ Os serviços podem ser filtrados por categoria, preço e avaliações.

## 📋 3. Criação de Projetos (Clientes)
### 📌 Regras:
✅ Apenas clientes podem criar projetos.

✅ Um projeto deve estar vinculado a um serviço oferecido por um freelancer.

✅ O cliente pode solicitar propostas de freelancers antes de contratar.

✅ Após contratar um freelancer, o projeto muda para "Em andamento".

✅ O cliente pode cancelar um projeto antes do pagamento, mas será penalizado caso já tenha aceitado a proposta.

✅ O freelancer não pode cancelar um projeto após aceitar, a menos que o cliente concorde.

## 💰 4. Pagamentos e Segurança
### 📌 Regras:
✅ O pagamento é realizado pela plataforma e fica retido até a entrega do serviço.

✅ Após a finalização do projeto, o valor é liberado para o freelancer.

✅ O pagamento pode ser feito via cartão de crédito, Pix ou boleto.

✅ A plataforma cobra uma taxa de 10% sobre cada transação.

✅ Caso haja disputa entre cliente e freelancer, o valor é retido até resolução.

## ⭐ 5. Avaliações e Feedbacks
### 📌 Regras:
✅ Apenas clientes podem avaliar freelancers após a conclusão do projeto.

✅ A avaliação vai de 1 a 5 estrelas e pode conter um comentário.

✅ Freelancers com média abaixo de 2,5 estrelas por mais de 3 projetos serão suspensos.

✅ O freelancer pode responder avaliações para esclarecer dúvidas.

## 📆 6. Status do Projeto
### 📌 Regras:
Um projeto pode ter os seguintes status:

1️⃣ Aberto - Cliente publicou e está recebendo propostas. 

2️⃣ Em andamento - Freelancer foi contratado e está trabalhando no projeto.  

3️⃣ Concluído - O serviço foi entregue e o pagamento liberado. 

4️⃣ Cancelado - O projeto foi encerrado sem pagamento.

## 📩 7. Comunicação entre Cliente e Freelancer
### 📌 Regras:
✅ Clientes e freelancers podem trocar mensagens apenas dentro da plataforma.

✅ Mensagens não podem conter dados de contato externos (como e-mails ou números de telefone).

✅ Conversas são monitoradas para evitar fraudes e garantir segurança.

## 🚨 8. Política de Cancelamento e Penalizações
### 📌 Regras:
✅ Se um cliente cancelar um projeto antes do pagamento, não há penalização.

✅ Se um cliente cancelar após aceitar uma proposta, será cobrada uma multa de 5%.

✅ Se um freelancer abandonar um projeto, ele pode ser suspenso da plataforma.

## 🔐 9. Segurança e Privacidade
### 📌 Regras:
✅ Senhas são armazenadas com hash e nunca são visíveis.

✅ Dados de pagamento são processados por um gateway seguro (ex: Stripe, PayPal).

✅ A plataforma não compartilha informações pessoais de usuários com terceiros.
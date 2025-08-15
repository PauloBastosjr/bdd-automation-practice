Funcionalidade: Login e Cadastro de Usuário no Automation Practice
  Como visitante ou usuário cadastrado
  Quero realizar login ou criar uma nova conta
  Para poder acessar e gerenciar meus pedidos

  # ------------------ LOGIN ------------------
  Cenário: Login com credenciais válidas
    Dado que estou na página de login
    E informo o email "usuario@teste.com"
    E informo a senha "senhaValida123"
    Quando clico no botão "Entrar"
    Então devo ser redirecionado para a página da minha conta
    E devo ver a mensagem "Bem-vindo, Usuário!"

  Cenário: Login com senha incorreta
    Dado que estou na página de login
    E informo o email "usuario@teste.com"
    E informo a senha "senhaErrada"
    Quando clico no botão "Entrar"
    Então devo ver a mensagem "Senha inválida"

  Cenário: Login com email não cadastrado
    Dado que estou na página de login
    E informo o email "naocadastrado@teste.com"
    E informo a senha "senhaQualquer"
    Quando clico no botão "Entrar"
    Então devo ver a mensagem "Usuário não encontrado"

  Cenário: Login sem preencher os campos
    Dado que estou na página de login
    Quando clico no botão "Entrar"
    Então devo ver a mensagem "Preencha o campo de email"
    E devo ver a mensagem "Preencha o campo de senha"

  # ------------------ CADASTRO ------------------
  Cenário: Cadastro com dados válidos
    Dado que estou na página de cadastro
    E preencho o campo "Nome" com "João Teste"
    E preencho o campo "Email" com "joao.teste@teste.com"
    E preencho o campo "Senha" com "SenhaForte123"
    E confirmo a senha com "SenhaForte123"
    E marco a opção "Aceito os termos de uso"
    Quando clico no botão "Cadastrar"
    Então devo ser redirecionado para a página da minha conta
    E devo ver a mensagem "Cadastro realizado com sucesso!"

  Cenário: Cadastro com email já cadastrado
    Dado que estou na página de cadastro
    E preencho o campo "Nome" com "João Teste"
    E preencho o campo "Email" com "usuarioexistente@teste.com"
    E preencho o campo "Senha" com "SenhaForte123"
    E confirmo a senha com "SenhaForte123"
    E marco a opção "Aceito os termos de uso"
    Quando clico no botão "Cadastrar"
    Então devo ver a mensagem "Email já cadastrado"

  Cenário: Cadastro com senhas diferentes
    Dado que estou na página de cadastro
    E preencho o campo "Nome" com "Maria Teste"
    E preencho o campo "Email" com "maria.teste@teste.com"
    E preencho o campo "Senha" com "SenhaForte123"
    E confirmo a senha com "SenhaErrada456"
    E marco a opção "Aceito os termos de uso"
    Quando clico no botão "Cadastrar"
    Então devo ver a mensagem "As senhas não coincidem"

  Cenário: Cadastro sem preencher campos obrigatórios
    Dado que estou na página de cadastro
    Quando clico no botão "Cadastrar"
    Então devo ver a mensagem "Preencha o campo Nome"
    E devo ver a mensagem "Preencha o campo Email"
    E devo ver a mensagem "Preencha o campo Senha"

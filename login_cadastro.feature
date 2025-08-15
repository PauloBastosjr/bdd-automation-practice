Funcionalidade: Login e Cadastro de Usuário no Automation Practice
  Como visitante ou usuário cadastrado
  Quero realizar login ou criar uma nova conta
  Para poder acessar e gerenciar meus pedidos

  # ------------------ LOGIN ------------------
  Cenário: Login com credenciais válidas
    Dado que estou na página de login
    E informo o email "paulo.bastosjr@outlook.com"
    E informo a senha "senha123456"
    Quando clico no botão "Entrar"
    Então devo ser redirecionado para a página da minha conta
    E devo ver a mensagem "Login realizado"

  Cenário: Login com senha incorreta
    Dado que estou na página de login
    E informo o email "paulo,bastosjr@outlook.com"
    E informo a senha "123"
    Quando clico no botão "Entrar"
    Então devo ver a mensagem "Senha inválida"

  Cenário: Login com email não cadastrado
    Dado que estou na página de login
    E informo o email "@cogumelo.com"
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
    E preencho o campo "Nome" com "Paulo"
    E preencho o campo "Email" com "paulo.junior@gmail.com"
    E preencho o campo "Senha" com "123456"
    Quando clico no botão "Cadastrar"
    Então devo ser redirecionado para a página da minha conta
    E devo ver a mensagem "Cadastro realizado!"

  Cenário: Cadastro com email já cadastrado
    Dado que estou na página de cadastro
    E preencho o campo "Nome" com "Paulo"
    E preencho o campo "Email" com "paulo.junior@gmail.com"
    E preencho o campo "Senha" com "SenhaForte123"
    Quando clico no botão "Cadastrar"
    Então devo ver a mensagem "Email já cadastrado"

  Cenário: Cadastro sem preencher campos obrigatórios
    Dado que estou na página de cadastro
    Quando clico no botão "Cadastrar"
    Então devo ver a mensagem "Preencha o campo Nome"
    E devo ver a mensagem "Preencha o campo Email"
    E devo ver a mensagem "Preencha o campo Senha"

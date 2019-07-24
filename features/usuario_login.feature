#language: pt
Funcionalidade: Login de usuário
  Como um usuário cadastrado
  Eu desejo fazer o login
  Para acessar o sistema

Cenário: Login de usuário com sucesso
  Dado que eu possuo um usuário cadastrado
  Quando eu informo minhas credenciais
  Então eu tenho acesso ao sistema

  Variante: Logar usuário preenchendo todos os campos
  Dado que estou em [Tela de Login]
  Quando eu digito "joaoneves" no campo {Nome de Usuário}
    e digito "joaoneves2019" no campo {Senha}
    e clico em {Entrar}
  Então eu vejo "Usuário logado com sucesso"

Constantes:
  - "Tela de Login" é "http://localhost:8080/login"

Elemento de IU: Nome de Usuário
  - id é "nome_usuario"
  - tipo é caixa de texto

Elemento de IU: Senha
  - id é "senha"
  - tipo é caixa de texto
  - obrigatório

Elemento de IU: Entrar
  - tipo é botão

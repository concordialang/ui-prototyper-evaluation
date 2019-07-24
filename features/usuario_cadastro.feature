#language: pt
Funcionalidade: Realizar cadastro
  Como um usuário sem acesso ao sistema
  Eu desejo fazer o cadastro do meu usuário
  Para obter acesso ao sistema

Cenário: Realizar cadastro com sucesso
  Dado que não possuo um usuário no sistema
  Quando eu informo meus dados
    E concordo com os termos e condições do sistema
    E submeto os meus dados
  Então eu tenho um usuário com acesso ao sistema

  Variante: Cadastar usuário preenchendo todos os campos
  Dado que estou em [Tela de Cadastro]
  Quando eu digito "joaoneves" no campo {Nome de Usuário}
    e digito "João das Neves" no campo {Nome}
    e digito "joao.neves@cefet-rj.br" no campo {Email}
    e seleciono "Masculino" no campo {Gênero}
    e seleciono "Admin" no campo {Nível de Acesso}
    e marco o campo {Li e Aceito os Termos e Condições}
    e clico em {Salvar}
  Então eu vejo "Usuário registrado com sucesso"

Constantes:
  - "Tela de Cadastro" é "http://localhost:8080"

Elemento de IU: Nome de Usuário
  - id é "nome_usuario"
  - tipo é caixa de texto

Elemento de IU: Nome
  - id é "nome"
  - tipo é caixa de texto
  - obrigatório

Elemento de IU: Email
  - id é "email"
  - tipo é caixa de texto
  - obrigatório

Elemento de IU: Nível de Acesso
  - id é "nivel_acesso"
  - tipo é caixa de seleção
  - valor está em ["Administrador", "Gerente", "Usuário"]

Elemento de IU: Gênero
  - id é "genero"
  - tipo é radio
  - valor está em ["Masculino", "Feminino"]

Elemento de IU: Li e Aceito os Termos e Condições
  - id é "termos_e_condicoes"
  - obrigatório
  - tipo é caixa de marcação

Elemento de IU: Salvar
  - tipo é botão

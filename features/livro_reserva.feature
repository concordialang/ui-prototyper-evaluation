#language: pt
Funcionalidade: Reservar livro
  Como um estudante matriculado
  Eu desejo fazer a reserva de um livro
  Para poder garantir a realização de seu empréstimo

Cenário: Reserva de livro com sucesso
  Dado que estou matriculado
  Quando eu informo minha matrícula
    e informo os dados do livro desejado
    e confirmo a reserva
  Então eu recebo uma confirmação de reserva do livro

  Variante: Reservar livro preenchendo todos os campos
  Dado que estou em "http://localhost:8080/reserva"
  Quando eu digito "1410091GSIS" no campo {Matrícula}
    e digito "8573076100" no campo {Código do Livro}
    e clico no botão no campo {Buscar}
    e seleciono "Nova Friburgo" no campo {Unidade}
    e clico em {Reservar}
  Então eu vejo "Livro reservado com sucesso"

Elemento de IU: Matrícula
  - id é "matricula"
  - tipo é caixa de texto
  - obrigatório

Elemento de IU: Código do Livro
  - id é "codigo_livro"
  - tipo é caixa de texto
  - obrigatório

Elemento de IU: Buscar
  - id é "buscar"
  - tipo é botão

Elemento de IU: Unidade
  - id é "unidade"
  - tipo é caixa de seleção
  - valor está em ["Maracanã", "Maria das Graças", "Nova Friburgo", "Nova Iguaçu"]
  - obrigatório

Elemento de IU: Reservar
  - id é "reservar"
  - tipo é botão

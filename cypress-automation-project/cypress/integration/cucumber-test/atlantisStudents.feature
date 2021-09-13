Feature: Teste de Cadastro de Alunos dentro da Plataforma

  @ct001_students
  Scenario: [CT_001] - Realizo um novo cadastro de um aluno
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo 'atlantisgymteste@gmail.com' no campo de '#email'
    And Informo 'vamotestarissoai11997700' no campo de '#password'
    And Clico no botão de 'Acessar'
    Then Verifico se foi redirecionado para a url de "dashboard"
    And Acesso a listagem de recursos e clico em 'Alunos'
    Then Verifico se foi redirecionado para a url de "members"
    And Clico no icone para realizar o cadastro de um novo Aluno
    Then Verifico se foi redirecionado para a url de "members/new"
    And Informo 'nome completo' no campo de '#name'
    And Informo '1997-01-01' no campo de '#birthDate'
    And Clico no campo de '#genreSelect' e seleciono o Sexo 'Feminino'
    And Informo um CPF, Telefone e um Email nos campos de '#document', '#email', '#phone'


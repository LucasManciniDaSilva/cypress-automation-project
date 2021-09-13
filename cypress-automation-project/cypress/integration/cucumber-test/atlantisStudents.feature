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

  @ct002_students
  Scenario: [CT_002] - Realizo um novo cadastro sem enviar informar um valor no campo Nome Do Aluno
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo 'atlantisgymteste@gmail.com' no campo de '#email'
    And Informo 'vamotestarissoai11997700' no campo de '#password'
    And Clico no botão de 'Acessar'
    Then Verifico se foi redirecionado para a url de "dashboard"
    And Acesso a listagem de recursos e clico em 'Alunos'
    Then Verifico se foi redirecionado para a url de "members"
    And Clico no icone para realizar o cadastro de um novo Aluno
    Then Verifico se foi redirecionado para a url de "members/new"
    And Informo '1997-01-01' no campo de '#birthDate'
    And Clico no campo de '#genreSelect' e seleciono o Sexo 'Feminino'
    And Informo um CPF, Telefone e um Email nos campos de '#document', '#email', '#phone'
    And Clico no botão de 'Salvar'
    Then Verifico se retornou um erro de 'Nome é obrigatório' no campo '#name-helper-text'


  @ct003_students
  Scenario: [CT_003] - Realizo um novo cadastro sem enviar informar um valor no campo CPF
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
    And Informo um Telefone e um Email nos campos de '#email' e '#phone'
    And Clico no botão de 'Salvar'
    Then Verifico se retornou um erro de 'Documento é obrigatório' no campo '#document-helper-text'

  @ct004_students
  Scenario: [CT_004] - Realizo um novo cadastro sem enviar informar um valor no campo Email
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
    And Informo um Cpf no campo de '#document'
    And Clico no botão de 'Salvar'
    Then Verifico se retornou um erro de 'Email Obrigatório' no campo '#email-helper-text'
    And Verifico se retornou um erro de 'Telefone Obrigatório' no campo '#phone-helper-text'
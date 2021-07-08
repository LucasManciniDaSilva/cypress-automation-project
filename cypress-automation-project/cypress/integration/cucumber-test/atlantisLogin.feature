Feature: Teste de Login do sistema Atlantis Gym

  @ct001_login
  Scenario: [CT_001] - Realizo um login sem informar uma senha
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo o email 'garrido@gmail.com'
    And Clico no botão de Acessar
    Then Verifico se retornou um erro de 'Campo obrigatório' abaixo do campo de senha

  @ct002_login
  Scenario: [CT_002] - Realizo um login sem informar um email
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo uma senha '1234567890'
    And Clico no botão de Acessar
    Then Verifico se retornou um erro de 'Campo obrigatório' abaixo do campo de email


  @ct003_login
  Scenario: [CT_003] - Realizo um login com um usuário inexistente
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo o email 'garrido@gmail.com'
    And Informo uma senha '1234567890'
    And Clico no botão de Acessar
    Then Verifico se retornou um erro de 'Usuário ou Senha Inválidos' utilizando o toastify
Feature: Teste de Login do sistema Atlantis Gym

  @ct001_login
  Scenario: [CT_001] - Realizo um login sem informar uma senha
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo 'garrido@gmail.com' no campo de '#email'
    And Clico no botão de 'Acessar'
    Then Verifico se retornou um erro de 'Campo obrigatório' no campo '#password-helper-text'

  @ct002_login
  Scenario: [CT_002] - Realizo um login sem informar um email
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo '1234567890' no campo de '#password'
    And Clico no botão de 'Acessar'
    Then Verifico se retornou um erro de 'Campo obrigatório' no campo '#email-helper-text'


  @ct003_login
  Scenario: [CT_003] - Realizo um login com um usuário inexistente
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo 'garrido@gmail.com' no campo de '#email'
    And Informo '1234567890' no campo de '#password'
    And Clico no botão de 'Acessar'
    Then Verifico se retornou um erro de 'Usuário ou Senha Inválidos' utilizando o toastify
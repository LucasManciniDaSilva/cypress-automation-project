Feature: Teste de Login do sistema Atlantis Gym

  @ct001_login
  Scenario: [CT_001] - Realizo um login sem informar uma senha
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Informo o email 'garrido@gmail.com'
    And Clico no botão de Acessar
    Then Verifico se retornou um erro de 'Campo obrigatorio'
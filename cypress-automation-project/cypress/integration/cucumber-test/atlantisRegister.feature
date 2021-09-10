Feature: Teste de Registro do sistema Atlantis Gym

  @ct001_register
  Scenario: [CT_001] - Realizo um registro com sucesso
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo o campo email em '#email' dentro de '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Clico no botão de 'Avançar'
    And Informo 'academia nova' no campo de '#gymName' dentro de '#registerForm'
    And Informo o campo CNPJ em '#gymCnpj' dentro de '#registerForm'
    Then Clico no botão de 'Avançar'
    And Clico no botão de 'SELECIONAR' o plano gratuito
    Then Clico no botão de 'Registrar' e verifico se foi enviado o código de confirmação
    And Informo o código de confirmação no campo '#verificationCode' dentro de '#registerForm'
    Then Clico no botão de 'Ativar Conta'
    And Clico no botão de 'Fechar'
    Then Informo o email cadastrado no campo de '#email'
    And Informo '123456789' no campo de '#password'
    And Clico no botão de 'Acessar'


Feature: Teste de Registro do sistema Atlantis Gym

  # @ct001_register
  # Scenario: [CT_001] - Realizo um registro com sucesso
  #   Given Tenho acesso a url 'https://atlantis.cintra.dev/'
  #   When Clico no botão de 'Criar Conta'
  #   And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
  #   And Informo o campo email em '#email' dentro de '#registerForm'
  #   And Informo '123456789' no campo de '#password' dentro de '#registerForm'
  #   And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
  #   And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
  #   Then Clico no botão de 'Avançar'
  #   And Informo 'academia nova' no campo de '#gymName' dentro de '#registerForm'
  #   And Informo o campo CNPJ em '#gymCnpj' dentro de '#registerForm'
  #   Then Clico no botão de 'Avançar'
  #   And Clico no botão de 'SELECIONAR' o plano gratuito
  #   Then Clico no botão de 'Registrar' e verifico se foi enviado o código de confirmação
  #   And Informo o código de confirmação no campo '#verificationCode' dentro de '#registerForm'
  #   Then Clico no botão de 'Ativar Conta'
  #   And Clico no botão de 'Fechar'
  #   Then Informo o email cadastrado no campo de '#email'
  #   And Informo '123456789' no campo de '#password'
  #   And Clico no botão de 'Acessar'
  #   Then Verifico se foi redirecionado para a url de "dashboard"

  @ct002_register
  Scenario: [CT_002] - Realizo o fluxo de registro sem informar o campo Nome
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'teste@gmail.com' no campo de '#email' dentro de '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Verifico se retornou um erro de 'Nome é obrigatório' no campo '#name-helper-text'

  @ct003_register
  Scenario: [CT_003] - Realizo o fluxo de registro sem informar o campo Email
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Clico no campo de '#email' em '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Verifico se retornou um erro de 'Email é obrigatório' no campo '#email-helper-text'


  @ct004_register
  Scenario: [CT_004] - Realizo o fluxo de registro sem informar o campo Senha
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo 'teste@gmail.com' no campo de '#email' dentro de '#registerForm'
    And Clico no campo de '#password' em '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Verifico se retornou um erro de 'Senha é obrigatório' no campo '#password-helper-text'

  @ct005_register
  Scenario: [CT_005] - Realizo o fluxo de registro sem informar o campo Confirmação de Senha
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo 'teste@gmail.com' no campo de '#email' dentro de '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Clico no campo de '#passwordConfirmation' em '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Verifico se retornou um erro de 'Confirmação de senha é obrigatório' no campo '#passwordConfirmation-helper-text'


  @ct006_register
  Scenario: [CT_006] - Realizo o fluxo de registro sem informar o campo Telefone
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo 'teste@gmail.com' no campo de '#email' dentro de '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Clico no campo de '#phone' em '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    Then Verifico se retornou um erro de 'Telefone de contato é obrigatório' no campo '#phone-helper-text'

  @ct007_register
  Scenario: [CT_007] - Realizo o fluxo de registro informando uma senha diferente no campo de Confirmação de Senha
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo 'teste@gmail.com' no campo de '#email' dentro de '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Informo '1234567890' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Verifico se retornou um erro de 'Senhas não batem' no campo '#passwordConfirmation-helper-text'

  @ct008_register
  Scenario: [CT_008] - Realizo o fluxo de registro informando uma senha diferente no campo de Senha
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo 'teste@gmail.com' no campo de '#email' dentro de '#registerForm'
    And Informo '1234567890' no campo de '#password' dentro de '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Verifico se retornou um erro de 'Senhas não batem' no campo '#passwordConfirmation-helper-text'


  @ct009_register
  Scenario: [CT_009] - Realizo o fluxo de registro informando um Email inválido
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo 'teste@gmailcom' no campo de '#email' dentro de '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Verifico se retornou um erro de 'Email Inválido' no campo '#email-helper-text'


  @ct010_register
  Scenario: [CT_010] - Realizo o fluxo de registro sem informar o campo Nome da Academia
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo 'teste@gmail.com' no campo de '#email' dentro de '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Clico no botão de 'Avançar'
    And Clico no campo de '#gymCnpj' em '#registerForm'
    Then Verifico se retornou um erro de 'Nome da academia é obrigatório' no campo '#gymName-helper-text'

  @ct011_register
  Scenario: [CT_011] - Realizo o fluxo de registro sem informar o campo CNPJ da Academia
    Given Tenho acesso a url 'https://atlantis.cintra.dev/'
    When Clico no botão de 'Criar Conta'
    And Informo 'nome completo' no campo de '#name' dentro de '#registerForm'
    And Informo 'teste@gmail.com' no campo de '#email' dentro de '#registerForm'
    And Informo '123456789' no campo de '#password' dentro de '#registerForm'
    And Informo '123456789' no campo de '#passwordConfirmation' dentro de '#registerForm'
    And Informo '055912345678' no campo de '#phone' dentro de '#registerForm'
    Then Clico no botão de 'Avançar'
    And Informo 'academia nova' no campo de '#gymName' dentro de '#registerForm'
    And Clico no campo de '#gymCnpj' em '#registerForm'
    And Clico no campo de '#gymName' em '#registerForm'
    Then Verifico se retornou um erro de 'CNPJ da academia é obrigatório' no campo '#gymCnpj-helper-text'





